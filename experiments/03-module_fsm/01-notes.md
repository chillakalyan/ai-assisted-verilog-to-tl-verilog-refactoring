
# Experiment Note

## Module Name
FSM Traffic Light

## Objective
Convert a finite state machine (FSM) Verilog module into TL-Verilog using AI.

## Input Description
- Type: FSM (Control Logic)
- Complexity: Medium

## Expected Behavior
- Correct state transitions (0 → 1 → 2 → 0)
- Proper reset behavior
- Output reflects current state

## Observations Before Conversion
- Separate state and next_state logic
- Combinational + sequential mix
- Output depends on state

## Conversion Strategy
- Use FSM conversion prompt
- Separate state update and next_state logic into stages
- Maintain correct pipeline sequencing
