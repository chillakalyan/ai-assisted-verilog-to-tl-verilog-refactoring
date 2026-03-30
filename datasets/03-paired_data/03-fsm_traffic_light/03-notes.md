
# FSM Traffic Light Conversion Note

## Description
This module implements a simple finite state machine (FSM) that cycles through 3 states.

## States
- State 0 → State 1
- State 1 → State 2
- State 2 → State 0

## Conversion Details

### Verilog → TL-Verilog Mapping
- `always @(posedge clk)` → pipeline stage (`@`)
- `state register` → sequential pipeline register
- `next_state logic` → combinational logic inside pipeline
- `case statement` → conditional (ternary) mapping

## Pipeline Stages
- @0 → counter logic
- @1 → state update and next state computation
- @2 → output assignment

## Key Observations
- FSM requires separation of state and next_state
- Reset handling is critical for correct initialization
- Pipeline abstraction simplifies sequential logic

## Pattern Identified
FSM pattern:
- state register → >>1 dependency
- combinational logic → direct assignment
