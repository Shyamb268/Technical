module mem_interface (
    input wire clk,
    input wire we,
    input wire [18:0] addr,
    inout wire [18:0] data;
    output reg [18:0] mem_out,
    input wire [18:0] mem_in
    
);

reg [18:0] memory [0:1023]; //1K x 19-bit memory

always@(posedge clk) begin

     if (we) begin
        memory[addr] <=mem_in

    end
    mem_out <=memory[addr]
end

assign data = we ? 19'bz: mem_out;

endmodule
