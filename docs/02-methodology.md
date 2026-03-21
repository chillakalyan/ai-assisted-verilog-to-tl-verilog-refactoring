
# Methodology

## Objective
Define the approach used to convert Verilog into TL-Verilog using AI.

---

## Approach Overview

The system follows a structured pipeline:

1. Input Verilog design
2. Process input
3. Inject into prompt
4. Generate TL-Verilog using AI
5. Evaluate output

---

## Key Components

### 1. Dataset
- Contains Verilog input files
- Includes corresponding TL-Verilog outputs

### 2. Prompt Engineering
- Templates designed for different design types:
  - Basic modules
  - Pipeline-heavy modules
  - FSM-based modules

### 3. AI Conversion
- Uses structured prompts
- Ensures correct timing and logic mapping

### 4. Evaluation
- Functional correctness
- Timing accuracy
- Structural validation

---

## Design Principles

- Reusability
- Scalability
- Accuracy
- Maintainability

---

## Outcome

A system capable of converting Verilog designs into TL-Verilog efficiently using AI.
