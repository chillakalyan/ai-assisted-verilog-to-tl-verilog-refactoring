
// 4-bit Counter
// Increments by 1 on every clock cycle
// Resets to 0 when reset is high

module counter (
    input wire clk,            // Clock signal
    input wire reset,          // Active-high reset
    output reg [3:0] count     // 4-bit counter output
);

    // Counter logic
    always @(posedge clk) begin
        if (reset) begin
            count <= 4'b0000;  // Reset counter to 0
        end else begin
            count <= count + 1; // Increment counter
        end
    end

endmodule
