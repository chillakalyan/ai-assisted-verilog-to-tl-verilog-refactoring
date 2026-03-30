
# Final Report

## Project Title
AI-Assisted Conversion of Verilog to TL-Verilog

---

## Objective
To design and implement a structured pipeline that converts Verilog hardware designs into TL-Verilog using AI and evaluates the results.

---

## System Overview

The system consists of:

1. Dataset
   - Raw Verilog files
   - TL-Verilog outputs
   - Paired input-output data

2. Prompt Engine
   - Reusable templates for different design types

3. AI Conversion Pipeline
   - Injects Verilog into prompts
   - Generates TL-Verilog output

4. Post-Processing
   - Refinement of AI output
   - Final clean TL-Verilog

5. Evaluation System
   - Metrics for correctness, timing, and structure

---

## Modules Implemented

### 1. Counter (Sequential Logic)
- High accuracy
- No refinement required

### 2. ALU (Pipeline Datapath)
- Moderate accuracy
- Required fixes in pipeline dependencies

### 3. FSM Traffic Light (Control Logic)
- Moderate accuracy
- Required stage alignment and reset handling

---

## Key Results

| Module  | Functional | Timing | Refinement Needed |
|--------|-----------|--------|------------------|
| Counter | High      | High   | No               |
| ALU     | Medium    | Medium | Yes              |
| FSM     | Medium    | Medium | Yes              |

---

## Observations

- AI performs well for simple sequential designs
- Pipeline-heavy designs require manual refinement
- FSM conversion requires careful stage separation

---

## Contributions

- Designed reusable prompt templates
- Built dataset and paired data
- Developed experiment workflow
- Created mapping library for Verilog → TL-Verilog
- Implemented evaluation framework

---

## Limitations

- AI does not always handle pipeline dependencies correctly
- FSM sequencing may require manual correction
- Output quality depends on prompt design

---

## Future Work

- Improve prompt engineering for complex designs
- Integrate real AI API for automation
- Add simulation-based validation
- Expand dataset with more modules

---

## Conclusion

The project demonstrates that AI can assist in converting Verilog to TL-Verilog effectively.

- High accuracy for simple designs
- Moderate accuracy for complex designs
- Manual refinement improves reliability

This approach provides a scalable and structured method for hardware design conversion.
