module alu (
    input  wire [7:0] A,
    input  wire [7:0] B,
    output wire [8:0] SUM
);

assign SUM = {1'b0, A} + {1'b0, B};
endmodule