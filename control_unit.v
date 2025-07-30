module control_unit(
    input wire [18:0] instr,
    output reg [4:0] opcode,
    output reg [3:0] rd,
    output reg [3:0] rs1,
    output reg [3:0] rs2,
    output reg [9:0] imm,
    output reg [13:0] addr
 );
 
 always @ (*)  begin
   opcode = instr[18:14];
   rd = instr[13:10];
   rs1 = instr[9:6];
   rs2 = instr[5:2];
   imm = instr[9:0];
   addr = instr[13:0];

end

end module
