         LOC  #218
Buffer   LOC  @+14
         GREG @
Arg0     OCTA FLAG,0
Arg1     OCTA Buffer,14
FLAG     BYTE "flag",0
         LOC  #200

Main     LDA  $255,Arg0
         TRAP 0,Fopen,3
         LDA  $255,Arg1
         TRAP 0,Fread,3
         LDA  $255,Arg1
         TRAP 0,Fwrite,StdOut
