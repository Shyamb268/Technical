module fft_accel (
    input wire clk,
    input wire start,
    input wire [18:0] addr_in,cle
    output wire [18:0] addr_out,
    output reg done
);

//placeholder for FFT logic

always@(posedge clk) begin
 if (start) begin
 //FFT operation would be triggered here.

 done <=1'b1; //for now immidiatly signal done

 end else begin
   done <=1'b0;
 end
end

endmodule
