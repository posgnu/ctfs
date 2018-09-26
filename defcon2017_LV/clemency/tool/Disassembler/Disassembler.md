# Disassembler

## Functions



**reg2string(idx)**

idx를 넣으면 해당하는 register를 표시하는 string을 반환합니다. (cLEMENCy 문서 page 2 참조.)

**tosigned(val, le)**

해당 Unsigned value를 signed value로 바꿉니다. 이 때 해당 값이 몇 bit인지 le로 입력해줍니다. 실제 Instruction에서 17bit, 14bit, 7bit Signed Imm이 존재해 이를 위해 구현했습니다.

**binary2code(binary)**

ebmoon님의 코드를 그대로 사용했습니다. Binary file로부터 읽어들인 byte array을 9bit씩 끊어 cLEMENCy byte array로 바꿉니다.

**getvalue(val, st, ed, le)**

해당 Value의 st번째 bit부터 ed번째 bit까지의 값을 읽어들입니다. opcode등을 읽기 위해 사용됩니다. le는 Value가 몇 bit인지 입력해주는 값입니다.

**getbytes(data, idx, le)**

cLEMENCy byte array (data)의 idx위치에서 le개만큼 읽어옵니다. 읽어오는 데이터는 총 9*le bit, le cLEMENCy byte가 됩니다.

**checkinst(data, idx)**

cLEMENCy byte array (data)의 idx위치에서 시작하는 instruction을 하나 읽어들입니다. 읽는데 실패했다면 None을 반환합니다. 반환하는 Instruction에는 Address가 설정되어있지 않기 때문에, **Instruction.setaddr()**을 통해서 설정해야 합니다.

-----

## Instruction Class

### Member Variables

**self.type**

해당 Instruction의 type(op)을 string으로 저장합니다. Uppercase로 이루어집니다. cf) "AD", "STL"



* 이 뒤로 모든 Member variable은 -1일 경우 해당 Instruction에 포함되지 않는 경우입니다.
  예를 들어, ADCI rA, rB, Imm의 경우 self.rC나 self.Off와 같은 variable은 -1의 값을 가집니다.

**self.rA, self.rB, self.rC**

rA, rB, rC의 번호를 Int로 저장합니다.

**self.UF**

UF를 Int로 저장합니다.

**self.Imm**

Immediate를 Int로 저장합니다. 17bit, 14bit, 7bit의 Case가 존재하며, 이는 Instruction type을 통해 구분해야합니다. self.tostring의 관련된 부분의 코드를 읽어보시기 바랍니다. _해당 값은 모두 Unsigned로 저장되어 있으므로, Signed Instruction에 대해서 Immediate 값을 참조하려면 Signed로 변환해야 합니다. 변환 방법은 self.tostring()을 참고하는 것이 좋습니다._

**self.Cond**

Condition을 Int로 저장합니다. 실제 분류는 cLEMENCy 문서의 Call Conditional(C) 등의 Instruction의 설명을 읽어보시기 바랍니다.

**self.Off, self.Loc**

Offset(상대 주소), Location(절대 주소)를 저장합니다. _Offset의 경우 값이 Unsigned로 저장되어 있으므로, 실제로 사용하려면 Signed로 변환해야 합니다. 변환 방법은 self.tostring()에서 변환하여 출력하는 부분을 참고하는 것이 좋습니다._

**self.RegCnt, self.Mode, self.MemOff**

54bit Instruction들(LDT, LDW, STS, STT, STW, LDS)의 경우에 사용되는 특수한 값들을 Int로 저장합니다.

**self.MemFlgs**

SMP Instruction에서 사용되는 Memory Flags를 Int로 저장합니다. 실제 분류는 cLEMENCy 문서의 Call Conditional(C) 등의 Instruction의 설명을 읽어보시기 바랍니다.

## Member Functions

**self.\_\_init\_\_(typ, ...)**

Instruction의 type와 함께 다른 값들을 받습니다. 자세한 정의는 init 코드를 참고하시기 바랍니다.

**self.length()**

Instruction의 type를 통해 Instruction의 길이를 반환합니다.

**self.tostring()**

Instruction을 String으로 변환합니다. CAR와 같이 상대 주소를 참조하는 Instruction의 경우, **self.setaddr()**을 통해 Instruction의 Address를 설정해주면 정상적으로 절대 주소도 출력합니다.

**self.setaddr(addr)**

Instruction의 Address를 설정합니다.

**self.jumpto()**

만약 Call / Branch Instruction이라면, 부르는 주소를 반환합니다. 아니라면 None을 반환합니다.

**self.isblockend()**

Flow를 그릴 때, block의 끝이 되는 instruction인지 반환합니다. Return, Halt, Branch의 경우 True를 반환하고, 아닐 경우 False를 반환합니다.





* 이를 통해서 Disassemble을 하는 방법은 Interactive.py를 보시기 바랍니다.

