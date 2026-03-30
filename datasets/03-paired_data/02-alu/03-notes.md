# ALU Pipeline Conversion Note

## Description
This module implements a multi-stage pipelined ALU that performs arithmetic and logical operations based on an opcode.

## Pipeline Structure

### Stage @0 — Input Generation
- Inputs `a`, `b` derived from cycle counter (`cyc_cnt`)
- Opcode selected using lower bits of counter
- Represents input preparation stage

### Stage @1 — ALU Computation
- Performs all operations in parallel:
  - Addition
  - Subtraction
  - AND
  - OR
  - XOR
- Results stored in intermediate pipeline signals

### Stage @2 — Result Selection
- Selects final output based on opcode
- Uses conditional (ternary) mapping instead of case statement

---

## Verilog → TL-Verilog Mapping

| Verilog Concept | TL-Verilog Equivalent |
|----------------|----------------------|
| always @(posedge clk) | pipeline stage (@) |
| register updates | pipeline signals |
| sequential dependency | >> operator |
| case statement | conditional (ternary) logic |
| multiple always blocks | separate pipeline stages |

---

## Key Observations

- The design naturally maps to pipeline stages
- Parallel operations are efficiently handled in TL-Verilog
- Case statement is simplified into conditional expressions
- Timing abstraction removes explicit clock handling

---

## Patterns Identified

### 1. Pipeline Pattern
Sequential stages:
- Input → Compute → Output

### 2. Data Dependency
- Stage-to-stage flow handled using implicit timing
- Equivalent to register forwarding in Verilog

### 3. Control Logic
- Opcode-based selection converted into conditional logic

---

## Ground Truth Note

This TL-Verilog implementation is written using Makerchip syntax and serves as the **reference (ground truth)** for evaluating AI-generated TL-Verilog outputs.

---

## Conclusion

The ALU design demonstrates how complex multi-stage pipelines in Verilog can be cleanly represented using TL-Verilog timing abstraction.
