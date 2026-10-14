
`timescale 1ns/1ps

module alu_tb;

    reg  [7:0] A, B;
    reg  [2:0] opcode;

    wire [7:0] Y;
    wire Zero, Carry, Overflow;

    // Connect to the ALU module
    alu uut (
        .A(A),
        .B(B),
        .opcode(opcode),
        .Y(Y),
        .Zero(Zero),
        .Carry(Carry),
        .Overflow(Overflow)
    );

    initial begin
        $dumpfile("sim/alu.vcd");
        $dumpvars(0, alu_tb);

        // Test 1: opcode 000
        A = 8'd10;
        B = 8'd20;
        opcode = 3'b000;
        #10;
        $display("A=%0d B=%0d opcode=%b Y=%0d Zero=%b",
                 A, B, opcode, Y, Zero);

        // Test 2: opcode 001
        A = 8'd30;
        B = 8'd10;
        opcode = 3'b001;
        #10;
        $display("A=%0d B=%0d opcode=%b Y=%0d Zero=%b",
                 A, B, opcode, Y, Zero);

        $finish;
    end

endmodule
