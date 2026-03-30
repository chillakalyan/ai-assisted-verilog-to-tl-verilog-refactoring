
# Counter Conversion Note

## Description
This module implements a 4-bit synchronous counter that increments on every clock cycle and resets to zero when reset is active.

---

## Verilog Behavior

- On every positive clock edge:
  - If reset = 1 → count = 0
  - Else → count = count + 1

---

## TL-Verilog Mapping

### Pipeline Stages

- @0 → Reset signal capture
- @1 → Counter update logic

---

## Verilog → TL-Verilog Conversion

| Verilog Concept | TL-Verilog Equivalent |
|----------------|----------------------|
| always @(posedge clk) | pipeline stage (@1) |
| count <= count + 1 | >>1$count + 1 |
| reset condition | conditional operator (? :) |
| register storage | pipeline signal ($count) |

---

## Key Observations

- Sequential dependency handled using `>>1`
- No explicit clock needed in TL-Verilog
- Reset logic directly embedded in assignment

---

## Pattern Identified

### Sequential Counter Pattern

```text
reg <= reg + 1  →  $reg = >>1$reg + 1
