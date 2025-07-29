module fft_accel (
    input wire clk,
    input wire start,
    input wire [18:0] addr_in,
    input wire [18:0] addr_out,
    output reg done
);
    // Placeholder for FFT logic
    always @(posedge clk) begin
        if (start) begin
            // FFT operation would be triggered here
            done <= 1'b1; // For now, immediately signal done
        end else begin
            done <= 1'b0;
        end
    end
endmodule 