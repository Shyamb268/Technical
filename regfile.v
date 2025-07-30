module regfile (
    input wire clk,
    input wire we,
    input wire [3:0] rd_addr,
    input wire [3:0] rs1_addr,
    input wire [3:0] rs2_addr,
    input wire [18:0] wd,
    output wire [18:0] rs1,
    output wire [18:0] rs2
);

reg [18:0] regs [0:15];

//read ports
assign rs1 = regs[rs1_addr];
assign rs2 = regs[rs2_addr];

//write port
always@(posedge clk) begin
    if (we) begin
        regs[rd_addr] <= wd;
    end
end

endmodule
