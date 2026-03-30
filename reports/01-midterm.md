
# Midterm Repor

## Project Title
AI-Assisted Conversion of Verilog to TL-Verilog

---

## Objective
To develop a system that converts Verilog designs into TL-Verilog using structured prompts and AI assistance.

---

## Work Completed

### 1. Project Setup
- Organized project structure
- Created folders for datasets, prompts, scripts, and experiments

---

### 2. Dataset Preparation
- Collected Verilog modules:
  - Counter
  - ALU
  - FSM Traffic Light
- Created corresponding TL-Verilog outputs
- Built paired dataset (input-output mapping)

---

### 3. Prompt Engineering
- Designed reusable prompt templates:
  - Basic conversion
  - Pipeline conversion
  - FSM conversion

---

### 4. Initial AI Conversion
- Generated TL-Verilog outputs using prompts
- Stored results for analysis

---

### 5. Experiment Setup
- Created experiment folders for each module
- Structured workflow:
  - Input → AI Output → Refinement → Final → Results

---

## Results So Far

- Counter module: Successfully converted with high accuracy
- ALU module: Requires refinement for pipeline correctness
- FSM module: Requires stage alignment fixes

---

## Challenges Faced

- Handling pipeline dependencies correctly
- Ensuring proper stage sequencing
- Managing FSM state transitions in TL-Verilog

---

## Learnings

- Importance of pipeline staging (@0, @1, etc.)
- Role of `>>` operator in maintaining dependencies
- Differences between datapath and control logic

---

## Next Steps

- Improve refinement process
- Enhance evaluation metrics
- Automate pipeline using scripts
- Complete documentation and reports
