module alu (
    input wire [18:0] r2,
    input wire [18:0] r3,
    output reg [18:0] r1,
    output reg zero
);

always@(*)begin
   case(opcode)

   5'b00000: r1 = r2 + r3;  //ADD
   5'b00001: r1 = r2 - r3;  //SUB
   5'b00010: r1 = r2 * r3;  //MUL
   5'b00011: r1 = r3 !=0 ? r2 / r3 :19'b0;  //DIV (avoids divide by zero)
   5'b00100: r1 = r2 & r3;  //AND
   5'b00101: r1 = r2 | r3;  //OR
   5'b00110: r1 = r2 ^ r3;  //XOR
   5'b00111: r1 = ~r2;  //NOT
   5'b01000: r1 = r2 + 1;  //INC
   5'b01001: r1 = r2 - 1;  //DEC

   default : r1=19'b0;
   endcase

   zero = (r1 ==19'b0);
end

endmodule
