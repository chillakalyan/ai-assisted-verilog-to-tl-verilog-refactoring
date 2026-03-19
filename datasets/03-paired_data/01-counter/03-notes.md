
# Counter Conversion Notes

## Description
4-bit synchronous counter that increments on every clock cycle.

## Conversion Details
- Verilog always @(posedge clk) → TL-Verilog pipeline stage
- Reset condition handled using conditional operator
- Sequential dependency handled using >>1 operator

## Observations
- Simple sequential logic converts cleanly
- No major AI errors expected

## Pattern Identified
always @(posedge clk) → pipeline stage (@1)
