
# Experiment Note

## Module Name
ALU (Pipeline-Based Design)

## Objective
Convert a pipeline-based ALU Verilog module into TL-Verilog using AI.

## Input Description
- Type: Pipeline / Datapath
- Complexity: Medium to High

## Expected Behavior
- Correct arithmetic and logical operations
- Proper pipeline stage separation
- Correct opcode-based result selection

## Observations Before Conversion
- Multiple pipeline stages present
- Data dependencies between stages
- Opcode controls final result

## Conversion Strategy
- Use pipeline conversion prompt
- Ensure stage-wise mapping (@0, @1, @2)
- Maintain correct signal flow using >> operator
