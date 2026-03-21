



# Pipeline Patterns

## Objective
Understand how sequential logic is converted into pipeline stages.

---

## What is a Pipeline?

A pipeline divides computation into stages:
- Each stage executes in one clock cycle
- Data flows between stages

---

## Verilog Example

```verilog
always @(posedge clk) begin
    a <= input;
    b <= a + 1;
end
```
## TL-Verilog Mapping
```tlv
@0
   $a = input;

@1
   $b = >>1$a + 1;
```
---
## Key Concepts
- @0 → initial stage
- @1, @2 → subsequent stages
---
## Data Dependency
- Use >> operator to refer to previous stage
---
## Common Issues
- Missing >> operator
- Incorrect stage ordering
- Data hazards
## Use in Project
- Critical for ALU conversion
- Ensures correct timing behavior
