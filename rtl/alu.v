
module alu (
    input  wire [7:0] A,
    input  wire [7:0] B,
    input  wire [2:0] opcode,
    output reg  [7:0] Y,
    output reg        Zero,
    output reg        Carry,
    output reg        Overflow
);

    always @(*) begin
        Y        = 8'b0;
        Zero     = 1'b0;
        Carry    = 1'b0;
        Overflow = 1'b0;

        case (opcode)
            // TODO: Implement ALU operations
            default: begin
                Y        = 8'b0;
                Carry    = 1'b0;
                Overflow = 1'b0;
            end
        endcase

        Zero = (Y == 8'b0);
    end

endmodule
