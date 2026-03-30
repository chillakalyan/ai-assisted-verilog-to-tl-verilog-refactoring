
# Experiment Log

## Objective
Track and summarize all experiments performed for Verilog to TL-Verilog conversion.

---

## Experiment 1: Counter Module

- Prompt Used: Basic Conversion
- Complexity: Low

### Observations
- AI output was fully correct
- No refinement required
- Proper reset and pipeline handling

### Result
- Status: ✅ Successful
- Accuracy: High

---

## Experiment 2: ALU Module

- Prompt Used: Pipeline Conversion
- Complexity: High

### Observations
- AI output had issues in pipeline dependencies
- Missing >> operator in multiple stages
- Opcode was not properly propagated

### Improvements
- Fixed data dependencies using >> operator
- Corrected pipeline stage alignment
- Introduced intermediate opcode stage

### Result
- Status: ⚠️ Improved after refinement
- Accuracy: Medium to High

---

## Experiment 3: FSM Traffic Light

- Prompt Used: FSM Conversion
- Complexity: Medium

### Observations
- AI output had incorrect stage ordering
- Missing reset handling
- State and next_state were not properly separated

### Improvements
- Added reset logic
- Separated FSM stages (@1, @2, @3)
- Fixed pipeline dependencies

### Result
- Status: ⚠️ Improved after refinement
- Accuracy: Medium

---

## Overall Observations

- AI performs very well for simple sequential designs
- Pipeline-heavy designs require manual refinement
- FSM conversion needs correct sequencing and stage separation

---

## Conclusion

The AI-assisted conversion system is effective but requires human validation for complex designs.

- High accuracy for simple modules
- Moderate accuracy for complex pipeline and FSM designs
- Refinement improves reliability significantly
