
module counter_tb;

reg clk = 0;
reg reset = 1;
wire [3:0] count;

// Instantiate DUT
counter uut (
    .clk(clk),
    .reset(reset),
    .count(count)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    $dumpfile("counter.vcd");
    $dumpvars(0, counter_tb);

    #10 reset = 0;

    #100 $finish;
end

endmodule
