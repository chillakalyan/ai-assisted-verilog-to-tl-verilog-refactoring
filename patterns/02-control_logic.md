

---

# ✅ `02-control_logic.md`

```markdown
# Control Logic Patterns

## Objective
Understand control logic structures such as FSMs and conditional logic.

---

## What is Control Logic?

Control logic determines:
- State transitions
- Decision making
- Flow of execution

---

## Common Structures

- FSM (Finite State Machine)
- Case statements
- If-else conditions

---

## Verilog Example

```verilog
always @(*) begin
    case(state)
        0: next_state = 1;
        1: next_state = 2;
        default: next_state = 0;
    endcase
end
