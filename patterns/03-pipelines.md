

---

# ✅ `03-pipelines.md`

```markdown
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
