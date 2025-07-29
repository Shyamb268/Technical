module alu (
    input wire [4:0] opcode,
    input wire [18:0] a,
    input wire [18:0] b,
    output reg [18:0] result,
    output reg zero
);
    always @(*) begin
        case (opcode)
            5'b00000: result = a + b; // ADD
            5'b00001: result = a - b; // SUB
            5'b00010: result = a * b; // MUL
            5'b00011: result = b != 0 ? a / b : 19'b0; // DIV, avoid div by zero
            5'b00110: result = a & b; // AND
            5'b00111: result = a | b; // OR
            5'b01000: result = a ^ b; // XOR
            5'b01001: result = ~a;    // NOT (only uses 'a')
            5'b00100: result = a + 1; // INC
            5'b00101: result = a - 1; // DEC
            default: result = 19'b0;
        endcase
        zero = (result == 19'b0);
    end
endmodule  