
module alu_tb

reg clk = 0;
reg reset = 1;

// Instantiate ALU (no outputs defined here for simplicity)
alu_pipeline uut (
    .clk(clk),
    .reset(reset)
);

always #5 clk = ~clk;

initial begin
    #10 reset = 0;
    #200 $finish;
end

endmodule
