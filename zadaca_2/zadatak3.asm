
@32767
D=A;
@5
M=D;
// usporeduje RAM[0]
@0
D=M;
@SKIP0 // je li RAM[0] pozitivan
D; JLE

@5
D=D-M;
@UPDATE0
D; JLT

@SKIP0
0; JMP

(UPDATE0)
	@0
	D=M;
	@5
	M=D;

(SKIP0)
// usporeduje RAM[1]
@1
D=M;
@SKIP1
D; JLE

@5
D=D-M;
@UPDATE1
D; JLT

@SKIP1
0; JMP

(UPDATE1)
	@1
	D=M;
	@5
	M=D;

(SKIP1)
// usporeduje RAM[2]
@2
D=M;
@SKIP2
D; JLE

@5
D=D-M;
@UPDATE2
D; JLT

@SKIP2
0; JMP

(UPDATE2)
	@2
	D=M;
	@5
	M=D;
(SKIP2)
// usporeduje RAM[3]
@3
D=M;
@SKIP3
D; JLE

@5
D=D-M;
@UPDATE3
D; JLT

@SKIP3
0; JMP

(UPDATE3)
	@3
	D=M;
	@5
	M=D;
(SKIP3)
//usporeduje RAM[4]
@4
D=M;
@SKIP4
D; JLE

@5
D=D-M;
@UPDATE4
D; JLT

@SKIP4
0; JMP

(UPDATE4)
	@4
	D=M;
	@5
	M=D;
(SKIP4)

(END)
@END
0; JMP