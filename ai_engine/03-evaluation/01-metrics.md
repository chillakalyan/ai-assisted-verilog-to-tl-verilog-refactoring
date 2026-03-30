
# Evaluation Metrics

## Objective
Define metrics to evaluate the correctness and quality of AI-generated TL-Verilog.

## Metrics

### 1. Functional Correctness
- Output behavior matches original Verilog
- Same logic and results across cycles

### 2. Timing Accuracy
- Pipeline stages preserve correct timing
- No unintended delays or mismatches

### 3. Structural Integrity
- Proper use of TL-Verilog constructs
- Correct pipeline stage usage (@0, @1, etc.)

### 4. Signal Consistency
- Signal names preserved
- Bit widths maintained correctly

### 5. Reset Handling
- Reset logic correctly implemented
- No undefined states after reset

### 6. Readability
- Clean and understandable TL-Verilog
- Proper organization of pipeline stages

## Summary
These metrics ensure both correctness and quality of the generated TL-Verilog.
