import sys

########## Let's use Python 3

if sys.version_info.major != 3:
    print("Please use Python 3!!!")
    sys.exit(0)


INST_2BYTES = ["BR", "CM", "CMF", "CMFM", "CMM", "CR", "DBRK", "DI", "EI", "HT", "IR", "RE", "RF", "SF", "WT"]
INST_4BYTES = ["BRA", "BRR", "CAA", "CAR"]
INST_6BYTES = ["LDT", "LDW", "STS", "STT", "STW", "LDS"]


def reg2string(idx):
    if idx <= 28:
        return "R%02d" % idx
    elif idx == 29:
        return "ST"
    elif idx == 30:
        return "RA"
    elif idx == 31:
        return "PC"

def tosigned(val, le):
    tmp = val & ( (1 << (le-1)) - 1 )
    if val & (1 << (le-1)) > 0:
        tmp = tmp ^ ( (1 << (le-1)) - 1 )
        tmp += 1
        tmp = -tmp
    return tmp

class Instruction:

    #self.type: type as String
    
    # rA, rB, rC
    #self.rA : rA as Int
    #self.rB : rB as Int
    #self.rC : rC as Int

    # UF, Immediate
    #UF : UF as Int
    #Imm: Immediate as Int

    # Condition, Offset, Location
    #Cond: Condition as Int
    #Off: Offset as Int
    #Loc: Location as Int

    # Special instruction (54bit):
    # opcode | rA | rB | Register Count | Adjust rB | Memory Offset
    #RegCnt: Register Count as Int
    #Mode: Adjust rB(Mode) as Int
    #MemOff: Memory Offset as Int

    # Memory Flags (SMP Only)
    #MemFlgs: Memory Flags as Int
    
    def __init__(self, typ, rA=-1, rB=-1, rC=-1, UF=-1, Imm=-1, Cond=-1, Off=-1, Loc=-1, RegCnt=-1, Mode=-1, MemOff=-1, MemFlgs=-1):
        self.type = typ
        self.rA, self.rB, self.rC = rA, rB, rC
        self.UF, self.Imm = UF, Imm
        self.Cond, self.Off, self.Loc = Cond, Off, Loc
        self.RegCnt, self.Mode, self.MemOff = RegCnt, Mode, MemOff
        self.MemFlgs = MemFlgs
        self.addr = -1

    def length(self):
        if self.type in INST_2BYTES:
            return 2
        elif self.type in INST_4BYTES:
            return 4
        elif self.type in INST_6BYTES:
            return 6
        else:
            return 3

    def tostring(self):
        s = self.type
        if self.UF == 1:
            s += "."

        ModeD = { 1: "I", 2: "D" }
        if self.Mode in ModeD:
            s += ModeD[self.Mode]

        ConditionD = { 0: "n", 1: "e", 2: "l", 3: "le", 4: "g", 5: "ge", 6: "no", 7: "o", 8: "ns", 9: "s", 10: "sl",
                       11: "sle", 12: "sg", 13: "sge" }

        if self.Cond in ConditionD:
            s += ConditionD[self.Cond]

        s += " "

        if self.type in INST_6BYTES:
            s += reg2string(self.rA) + ", "
            s += "[" + reg2string(self.rB) + " "
            s += "+ " + hex(self.MemOff)
            s += ", " + str(self.RegCnt + 1) + "]"
            return s

        RAFin = [ "DI", "EI", "RF", "SF", "BR", "CR", "RND", "RNDM" ]
        
        if self.type in RAFin:
            s += reg2string(self.rA)
            return s

        if self.rA != -1:
            s += reg2string(self.rA) + ", "
        if self.rB != -1:
            s += reg2string(self.rB) + ", "
        if self.rC != -1:
            s += reg2string(self.rC)
            return s

        if self.Imm != -1:
            if self.type == "MS":
                tmp = tosigned(self.Imm, 17)
                if tmp > 0: s += "+"
                s += hex(tmp)
            elif self.type in ["CMI", "CMIM"]:
                tmp = tosigned(self.Imm, 14)
                if tmp > 0: s += "+"
                s += hex(tmp)
            elif self.type in ["DVIS", "DVISM", "MDIS", "MDISM", "MUIS", "MUISM"]:
                tmp = tosigned(self.Imm, 7)
                if tmp > 0: s += "+"
                s += hex(tmp)
            else:
                s += hex(self.Imm)
            return s
        

        MemFlgsD = { 0: "NA", 1: "R", 2: "RW", 3: "E" }
        if self.MemFlgs in MemFlgsD:
            s += MemFlgsD[self.MemFlgs]
            return s


        if self.Loc != -1:
            s += " 0x" + ("%07x" % self.Loc)
            return s
        
        if self.Off != -1:
            if self.Cond != -1:
                tmp = tosigned(self.Off, 17)
            else:
                tmp = tosigned(self.Off, 27)

            if tmp > 0:
                s += "+" + hex(tmp)
            else:
                s += hex(tmp)

            tmp += self.addr
            s += " (0x" + ("%07x" % tmp) + ")"
            return s

        if s[-2:] == ', ':
            s = s[:-2]
        return s
        #TODO : instruction to string

    def setaddr(self, addr):
        self.addr = addr
        


def binary2code(binary):
    binstr = ""
    for c in binary:
        binstr += bin(c)[2:].rjust(8, '0')

    length = len(binstr)
    byte_arr = [0 for i in range(length // 9)]
    
    for i in range(length // 9):
        bytestr = binstr[9 * i: 9 * (i+1)]
        byte_arr[i] = int(bytestr, 2)
        
    return byte_arr


def getvalue(val, st, ed, le):
    # val: Input value,  st: start,  ed: end,  le: length
    
    # How to Use:
    # 0     6 | 7 11 | 12 16 | 17 21 | 22 25 | 26
    # 0000000 |  rA  |   rB  |  rC   |  0000 | UF
    # To check 0~6: getvalue(val, 0, 6, 27)
    # To check UF: getvalue(val, 26, 26, 27)

    val = val >> (le - ed - 1)
    val = val & ( (1 << (ed - st + 1)) - 1 )
    return val


def getbytes(data, idx, le):
    vlist = data[idx:idx+le]

    for i in range(1, len(vlist), 3):
        vlist[i], vlist[i-1] = vlist[i-1], vlist[i]

    v = 0
    for i in range(le):
        v = v << 9
        v += vlist[i]
    
    return v

def checkinst(data, idx):
    # Check the instruction where starts from idx
    
    v = getbytes(data, idx, 2)
    
    # RE ~ IR

    if v == 0b101000000000000000:
        return Instruction("RE")
    elif v == 0b101000000010000000:
        return Instruction("WT")
    elif v == 0b111111111111111111:
        return Instruction("DBRK")
    elif v == 0b101000000011000000:
        return Instruction("HT")
    elif v == 0b101000000001000000:
        return Instruction("IR")

    # DI ~ SF
    opcode = getvalue(v,0,11,18)
    d = {0b101000000101: "DI", 0b101000000100: "EI",
         0b101000001100: "RF", 0b101000001011: "SF"}
    if opcode in d:
        opcode2 = getvalue(getbytes(data, idx, 2), 17, 17, 18)
        if opcode2 != 0:
            return None
        rA = getvalue(getbytes(data, idx, 2), 12, 16, 18)
        return Instruction(d[opcode], rA=rA)

    # MH ~ MS
    opcode = getvalue(getbytes(data, idx, 3), 0, 4, 27)
    d = {0b10001: "MH", 0b10010: "ML",0b10011: "MS"}

    if opcode in d:
        rA = getvalue(getbytes(data, idx, 3), 5, 9, 27)
        Imm = getvalue(getbytes(data, idx, 3), 10, 26, 27)
        return Instruction(d[opcode], rA=rA, Imm=Imm)

    # B ~ C
    
    opcode = getvalue(getbytes(data, idx, 3), 0, 5, 27)
    d = {0b110000: "B", 0b110101: "C"}
    if opcode in d:
        Cond = getvalue(getbytes(data, idx, 3), 6, 9, 27)
        Off = getvalue(getbytes(data, idx, 3), 10, 26, 27)
        return Instruction(d[opcode], Cond=Cond, Off=Off)

    # CM ~ CMM
    d = { 0b10111000 : "CM", 0b10111010 : "CMF", 0b10111110 : "CMFM", 0b10111100 : "CMM" }
    opcode = getvalue(v, 0, 7, 18)
    if opcode in d:
        rA = getvalue(v, 8, 12, 18)
        rB = getvalue(v, 13, 17, 18)
        return Instruction(d[opcode], rA=rA, rB=rB)

    # BR ~ CR
    d = { 0b110010 : "BR", 0b110111 : "CR" }
    opcode = getvalue(v, 0, 5, 18)
    if opcode in d:
        if getvalue(v, 15, 17, 18) == 0b000:
            rA = getvalue(v, 10, 14, 18)
            Cond = getvalue(v, 6, 9, 18)
            return Instruction(d[opcode], Cond=Cond, rA=rA)
        else:
            return None

    # RMP, SMP
    opcode = getvalue(v, 0, 6, 18)
    if opcode == 0b1010010:
        inst = getbytes(data, idx, 3)
        rA = getvalue(inst, 7, 11, 27)
        rB = getvalue(inst, 12, 16, 27)
        if getvalue(inst, 17, 26, 27) == 0b0000000000:
            return Instruction("RMP", rA=rA, rB=rB)
        elif getvalue(inst, 17, 17, 27)==0b1 and getvalue(inst, 20, 26, 27)==0b0000000:
            MemFlgs = getvalue(inst, 18, 19, 27)
            return Instruction("SMP", rA=rA, rB=rB, MemFlgs=MemFlgs)
        else:
            return None
    
    # DMT:
    opcode = getvalue(v, 0, 6, 18)

    if opcode == 0b0110100:
        inst = getbytes(data, idx, 3)
        opcode2 = getvalue(inst, 22, 26, 27)
        if opcode2 != 0b00000:
            return None

        rA = getvalue(inst, 7, 11, 27)
        rB = getvalue(inst, 12, 16, 27)
        rC = getvalue(inst, 17, 21, 27)

        return Instruction("DMT", rA=rA, rB=rB, rC=rC)
    
    # CMI ~ CMIM:

    opcode = getvalue(v, 0, 7, 18)

    d = { 0b10111001 : "CMI", 0b10111101 : "CMIM" }

    if opcode in d:
        inst = getbytes(data, idx, 3)
        rA = getvalue(inst, 8, 12, 27)
        Imm = getvalue(inst, 13, 26, 27)

        return Instruction( d[opcode], rA=rA, Imm=Imm )

    # BF ~ NTM

    opcode = getvalue(v, 0, 8, 18)

    if opcode == 0b101001100: # BF, NG, NT
        inst = getbytes(data, idx, 3)
        rA = getvalue(inst, 7, 11, 27)
        rB = getvalue(inst, 12, 16, 27)
        UF = getvalue(inst, 26, 26, 27)
        opcode2 = getvalue(inst, 19, 25, 27)
        if opcode2 == 0b1000000:
            return Instruction("BF", rA=rA, rB=rB, UF=UF)
        elif opcode2 == 0b0000000:
            return Instruction("NG", rA=rA, rB=rB, UF=UF)
        elif opcode2 == 0b0100000:
            return Instruction("NT", rA=rA, rB=rB, UF=UF)
        else:
            return None
    elif opcode == 0b101001110: # BFM, NGM, NTM
        inst = getbytes(data, idx, 3)
        rA = getvalue(inst, 7, 11, 27)
        rB = getvalue(inst, 12, 16, 27)
        UF = getvalue(inst, 26, 26, 27)
        opcode2 = getvalue(inst, 19, 25, 27)
        if opcode2 == 0b1000000:
            return Instruction("BFM", rA=rA, rB=rB, UF=UF)
        elif opcode2 == 0b0000000:
            return Instruction("NGM", rA=rA, rB=rB, UF=UF)
        elif opcode2 == 0b0100000:
            return Instruction("NTM", rA=rA, rB=rB, UF=UF)
        else:
            return None
    elif opcode == 0b101001110: # NGF
        inst = getbytes(data, idx, 3)
        rA = getvalue(inst, 7, 11, 27)
        rB = getvalue(inst, 12, 16, 27)
        UF = getvalue(inst, 26, 26, 27)
        opcode2 = getvalue(inst, 19, 25, 27)
        if opcode2 != 0b0000000:
            return None
        return Instruction("NGF", rA=rA, rB=rB, UF=UF)
    elif opcode == 0b101001111: # NGFM
        inst = getbytes(data, idx, 3)
        rA = getvalue(inst, 7, 11, 27)
        rB = getvalue(inst, 12, 16, 27)
        UF = getvalue(inst, 26, 26, 27)
        opcode2 = getvalue(inst, 19, 25, 27)
        if opcode2 != 0b0000000:
            return None
        return Instruction("NGFM", rA=rA, rB=rB, UF=UF)
    

    # FTI ~ ITFM

    opcode = getvalue(v, 0, 8, 18)

    d = { 0b101000101: "FTI", 0b101000111 : "FTIM", 0b101000100 : "ITF", 0b101000110 : "ITFM" }

    if opcode in d:
        inst = getbytes(data, idx, 3)
        opcode2 = getvalue(inst, 19, 26, 27)
        if opcode != 0b00000000:
            return None

        rA = getvalue(inst, 9, 13, 27)
        rB = getvalue(inst, 14, 18, 27)

        return Instruction( d[opcode], rA=rA, rB=rB )
    
    # BRA ~ CAR

    opcode = getvalue(v, 0, 8, 18)

    d1 = { 0b111000100: "BRA", 0b111001100: "CAA" }
    d2 = { 0b111000000: "BRR", 0b111001000: "CAR" }

    if opcode in d1:
        inst = getbytes(data, idx, 4)
        Loc = getvalue(inst, 9, 35, 36)
        return Instruction( d1[opcode], Loc=Loc)
    elif opcode in d2:
        inst = getbytes(data, idx, 4)
        Off = getvalue(inst, 9, 35, 36)
        return Instruction( d2[opcode], Off=Off)

    # RND , RNDM

    opcode = getvalue(v, 0, 8, 18)

    d = { 0b101001100: "RND", 0b101001110: "RNDW" }

    if opcode in d:
        inst = getbytes(data, idx, 3)
        opcode2 = getvalue(inst, 14, 25, 27)
        if opcode2 != 0b000001100000:
            return None
        
        rA = getvalue(inst, 9, 13, 27)
        UF = getvalue(inst, 26, 26, 27)

        return Instruction( d[opcode], rA=rA, UF=UF )

    # SES ~ ZEW

    opcode = getvalue(v, 0, 11, 18)

    d = { 0b101000000111: "SES", 0b101000001000: "SEW", 0b101000001001: "ZES", 0b101000001010: "ZEW" }

    if opcode in d:
        inst = getbytes(data, idx, 3)
        opcode2 = getvalue(inst, 22, 26, 27)
        if opcode2 != 0b00000:
            return None

        rA = getvalue(inst, 12, 16, 27)
        rB = getvalue(inst, 17, 21, 27)

        return Instruction( d[opcode], rA=rA, rB=rB )


    # STS ~ LDW

    opcode = getvalue(v, 0, 6, 18)

    d = { 0b1011000: "STS", 0b1011010: "STT", 0b1011001: "STW", 0b1010100: "LDS", 0b1010110: "LDT", 0b1010101: "LDW" }

    if opcode in d:
        inst = getbytes(data, idx, 6)
        opcode2 = getvalue(inst, 51, 53, 54)
        if opcode2 != 0b000:
            return None

        rA = getvalue(inst, 7, 11, 54)
        rB = getvalue(inst, 12, 16, 54)
        RegCnt = getvalue(inst, 17, 21, 54)
        Mode = getvalue(inst, 22, 23, 54)
        MemOff = getvalue(inst, 24, 50, 54)

        return Instruction( d[opcode], rA=rA, rB=rB, RegCnt=RegCnt, Mode=Mode, MemOff=MemOff)

    # ADCI ~ XRI
    d = {(0b0100000, 0b01): "ADCI", (0b0100010, 0b01): "ADCIM", (0b0000000, 0b01): "ADI", (0b0000010, 0b01): "ADIM",
         (0b0010100, 0b01): "ANI", (0b0001100, 0b01):"DVI", (0b0001110, 0b01): "DVIM", (0b0001100, 0b11): "DVIS",
         (0b0001110, 0b11): "DVISM", (0b0010000, 0b01): "MDI", (0b0010010, 0b01):"MDIM", (0b0010000, 0b11): "MDIS",
         (0b0010010, 0b11): "MDISM", (0b0001000, 0b01): "MUI", (0b0001010, 0b01): "MUIM", (0b0001000, 0b11): "MUIS",
         (0b0001010, 0b11): "MUISM", (0b0011000, 0b01): "ORI", (0b1000000, 0b00): "RLI", (0b1000010, 0b00): "RLIM",
         (0b1000001, 0b00): "RRI", (0b1000011, 0b00): "RRIM", (0b0111101, 0b00): "SAI", (0b0111111, 0b00): "SAIM",
         (0b0100100, 0b01): "SBCI", (0b0100110, 0b01): "SBCIM", (0b0000100, 0b01): "SBI", (0b0000110, 0b01): "SBIM", 
         (0b0111000, 0b00): "SLI", (0b0111010, 0b00): "SLIM", (0b0111001, 0b00):"SRI", (0b0111011, 0b00): "SRIM",
         (0b0011100,0b01): "XRI"}
    
    opcode = getvalue(v, 0, 6, 18)
    inst = getbytes(data, idx, 3)
    opcode2 = getvalue(inst, 24, 25, 27)

    if (opcode,opcode2) in d:
        rA = getvalue(inst, 7, 11, 27)
        rB = getvalue(inst, 12, 16, 27)
        Imm = getvalue(inst, 17, 23, 27)
        UF = getvalue(inst, 26, 26, 27)
        return Instruction(d[(opcode,opcode2)], rA=rA, rB=rB, Imm=Imm, UF=UF)

    # DV ~ XRM:

    inst = getbytes(data, idx, 3)
    opcode = getvalue(inst, 0, 6, 27)
    opcode2 = getvalue(inst, 22, 25, 27)
    
    d = { (0b0001100, 0b0000): "DV", (0b0001101, 0b0000): "DVF", (0b0001111, 0b0000): "DVFM", (0b0001110, 0b0000): "DVM",
          (0b0001100, 0b0010): "DVS", (0b0001110, 0b0010): "DVS", (0b0001110, 0b0010): "DVSM", (0b0010000, 0b0000): "MD",
          (0b0010001, 0b0000): "MDF", (0b0010011, 0b0000): "MDFM", (0b0010010, 0b0000): "MDM", (0b0010000, 0b0010): "MDS",
          (0b0010010, 0b0010): "MDSM", (0b0000000, 0b0000): "AD", (0b0100000, 0b0000): "ADC", (0b0100010, 0b0000): "ADCM",
          (0b0000001, 0b0000): "ADF", (0b0000011, 0b0000): "ADFM", (0b0000010, 0b0000): "ADM", (0b0010100, 0b0000): "AN",
          (0b0010110, 0b0000): "ANM", (0b0001000, 0b0000): "MU", (0b0001001, 0b0000): "MUF", (0b0001011, 0b0000): "MUFM",
          (0b0001010, 0b0000): "MUM", (0b0001000, 0b0010): "MUS", (0b0001010, 0b0010): "MUSM", (0b0011000, 0b0000): "OR",
          (0b0011010, 0b0000): "ORM", (0b0110000, 0b0000): "RL", (0b0110010, 0b0000): "RLM", (0b0110001, 0b0000): "RR",
          (0b0110011, 0b0000): "RR", (0b0110011, 0b0000): "RRM", (0b0101101, 0b0000): "SA", (0b0101111, 0b0000): "SAM",
          (0b0000100, 0b0000): "SB", (0b0100100, 0b0000): "SBC", (0b0100110, 0b0000): "SBCM", (0b0000101, 0b0000): "SBF",
          (0b0000111, 0b0000): "SBFM", (0b0000110, 0b0000): "SBM", (0b0101000, 0b0000): "SL", (0b0101010, 0b0000): "SLM",
          (0b0101001, 0b0000): "SR", (0b0101011, 0b0000): "SRM", (0b0011100, 0b0000): "XR", (0b0011110, 0b0000): "XRM" }

    if (opcode, opcode2) in d:
        rA = getvalue(inst, 7, 11, 27)
        rB = getvalue(inst, 12, 16, 27)
        rC = getvalue(inst, 17, 21, 27)
        UF = getvalue(inst, 26, 26, 27)

        return Instruction( d[ (opcode, opcode2) ], rA=rA, rB=rB, rC=rC, UF=UF )

    return None
    

def main():
    with open('hello.bin', 'rb' ) as f:
        binary_data = f.read()

    data = binary2code(binary_data)
        
    instructions = []
    idx = 0x0
    while True:
        inst = checkinst(data, idx)
        if inst is None:
            print("Disassembly Error")
            break

        inst.setaddr(idx)
        instructions.append(inst)
        idx += inst.length()

        print(inst.tostring())
    
if __name__ == "__main__":
  main()

