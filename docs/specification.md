# 8-bit ALU Specification

Inputs
- A: 8-bit operand
- B: 8-bit operand
- opcode: 3-bit operation selector
Outputs
- Y: 8-bit result
- Zero: 1 when Y == 0
- Carry: arithmetic carry/borrow convention
- Overflow: signed arithmetic overflow
Operation Map
Opcode	Operation
000	ADD
001	SUB
010	AND
011	OR
100	XOR
101	NOT A
110	SLL
111	SRL
Conventions
- Result width: 8 bits
- Shift amount: B[2:0]
- Zero is derived from Y
- Carry and Overflow conventions must be
  defined and verified in the testbench