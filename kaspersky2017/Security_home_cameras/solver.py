f=open("secret_encrypted.png","rb").read().encode('hex')

parts = [f[i:i+2] for i in range(0, len(f), 2)]

out=""
for part in parts:
  nbyte=hex(int(part,16)^255)
  nbyte=nbyte.replace("0x","")
  if len(nbyte)==1:
    nbyte="0"+nbyte
  out+=nbyte
  
open("decrypted.png","wb").write(out.decode('hex'))
