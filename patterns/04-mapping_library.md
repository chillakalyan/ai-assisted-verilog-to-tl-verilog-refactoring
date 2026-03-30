


# Mapping Librar

## Objective
Provide a reference mapping between Verilog constructs and TL-Verilog equivalents.

---

## Sequential Logic

### Verilog
```verilog
always @(posedge clk)
    a <= b;
```
## TL-Verilog Mapping
```tlv
@1
   $a = >>1$b;
```
## Reset Handling
```Verilog
if (reset)
    a <= 0;
else
    a <= b;
```
## TL-Verilog 
```tlv
$a = $reset ? 0 : >>1$b;
```
## Combinational Logic
```verilog
assign y = a + b;
```
## TL-Verilog 
```tlv
$y = $a + $b;
```

## Case Statement (FSM)
```verilog
case(state)
    0: next = 1;
    default: next = 0;
endcase
```
## TL-Verilog 
```tlv
$next =
   ($state == 0) ? 1 :
                   0;
```
## Pipeline Dependency
```verilog
b <= a + 1;
```
## TL-Verilog 
```tlv
$b = >>1$a + 1;
```
---

## Key Takeaways
- ```always @(posedge clk)``` → pipeline stages
- ```<=``` → ```>>``` dependency
- ```assign``` → direct assignment
- ```case``` → conditional expressions
---

## Use in Project
- Design prompts
- Validate AI outputs
- Guide refinement process

