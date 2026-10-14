
`timescale 1ns/1ps

module alu_tb;

    reg  [7:0] A, B;
    wire [8:0] SUM;

    // Ket noi voi module ALU
    alu uut (
        .A(A),
        .B(B),
        .SUM(SUM)
    );

    initial begin
        $monitor("A=%d B=%d SUM=%d", A, B, SUM);

        // Test 1: 10 + 20 = 30
        A = 8'd10;
        B = 8'd20;
        #10;

        // Test 2: 255 + 1 = 256
        A = 8'd255;
        B = 8'd1;
        #10;

        $finish;
    end

endmodule
