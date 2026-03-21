# AI-Assisted Verilog to TL-Verilog Refactori

## Overview

This project presents a structured pipeline for converting **Verilog hardware designs** into **TL-Verilog** using AI-assisted techniques.

The system integrates:
- Prompt engineering
- Automated conversion workflows
- Manual refinement
- Evaluation and verification

The goal is to bridge the gap between traditional RTL design and modern pipeline-based abstractions.

---

## Objectives

- Convert Verilog modules into TL-Verilog using AI
- Maintain functional and timing correctness
- Support multiple design types:
  - Sequential logic (Counter)
  - Pipeline datapath (ALU)
  - Control logic (FSM)
- Build a reusable and scalable conversion pipeline
- Evaluate and verify generated outputs

---

## Key Features
🔹 Reusable prompt templates for different design categories  
🔹 Structured AI conversion pipeline  
🔹 Dataset with paired Verilog–TLV examples  
🔹 Refinement workflow for correcting AI outputs  
🔹 Evaluation metrics for correctness and quality  
🔹 Formal verification and equivalence checking framework  
🔹 Design pattern mapping (Verilog → TL-Verilog)

---

## Project Architecture
```
Verilog Input
     ↓
Input Processing
     ↓
Prompt Injection
     ↓
AI Conversion
     ↓
TL-Verilog Output
     ↓
Refinement
     ↓
Evaluation
     ↓
Verification
```

---

## Repository Structure
```
ai-assisted-verilog-to-tl-verilog-refactoring/
│
├── ai_engine/                      # Core AI pipeline for conversion
│   ├── 01-prompts/                # Prompt templates for different tasks
│   │   ├── 01-basic-conversion.txt
│   │   ├── 02-pipeline-conversion.txt
│   │   ├── 03-fsm-conversion.txt
│   │   └── 04-optimization-prompts.txt
│   │
│   ├── 02-pipeline_flow/          # Step-by-step AI workflow
│   │   ├── 01-input-processing.md
│   │   ├── 02-ai-conversion-flow.md
│   │   ├── 03-post-processing.md
│   │   └── 04-full-pipeline.md
│   │
│   ├── 03-evaluation/             # Evaluation metrics and analysis
│   │   ├── 01-metrics.md
│   │   ├── 02-accuracy-analysis.md
│   │   ├── 03-comparison-manual-vs-ai.md
│   │   └── 04-error-analysis.md
│   │
│   └── 04-scripts/                # Automation scripts
│       ├── 01-run-pipeline.py
│       ├── 02-generate-tlv.py
│       ├── 03-evaluate-results.py
│       └── 04-dataset-builder.py
│
├── datasets/                     # Dataset for training & evaluation
│   ├── 01-raw_verilog/           # Original Verilog designs
│   ├── 02-tlv_outputs/           # Converted TL-Verilog outputs
│   └── 03-paired_data/           # Input-output pairs with notes
│
├── docs/                         # Documentation and project details
│   ├── 01-timeline.md
│   ├── 02-methodology.md
│   ├── 03-ai_workflow.md
│   └── 04-setup_guide.md
│
├── experiments/                  # Experiment tracking
│   ├── 01-module_counter/
│   ├── 02-module_alu/
│   ├── 03-module_fsm/
│   └── 04-logs.md
│
├── patterns/                     # Design patterns and mappings
│   ├── 01-datapath.md
│   ├── 02-control_logic.md
│   ├── 03-pipelines.md
│   └── 04-mapping_library.md
│
├── reports/                      # Project reports
│   ├── 01-midterm.md
│   └── 02-final.md
│
├── src/                          # Source code at different stages
│   ├── 01-input_verilog/         # Original Verilog
│   ├── 02-ai_generated_tlv/      # AI-generated TL-Verilog
│   ├── 03-refined_tlv/           # Manually refined TL-Verilog
│   └── 04-final_verified/        # Verified final outputs
│
├── verification/                 # Formal + simulation verification
│   ├── 01-symbiyosys/
│   │   └── 02-results/           # Logs, proofs, status
│   │
│   ├── 02-eq/                    # Equivalence checking
│   │   └── 02-results/
│   │
│   └── 03-testbenches/           # Simulation testbenches
│       ├── 01-counter_tb.v
│       ├── 02-alu_tb.v
│       └── 03-fsm_tb.v
│
└── README.md
```

---

## Modules Covered

| Module  | Type              | Complexity | AI Accuracy |
|--------|------------------|-----------|------------|
| Counter | Sequential Logic | Low       | High       |
| ALU     | Pipeline Datapath| High      | Medium     |
| FSM     | Control Logic    | Medium    | Medium     |

---

## Workflow

1. Select appropriate prompt template  
2. Inject Verilog code into prompt  
3. Generate TL-Verilog using AI  
4. Refine output for correctness  
5. Evaluate using defined metrics  
6. Verify using formal/simulation methods  

---

## Evaluation Summary

- Simple designs → High accuracy  
- Pipeline designs → Require dependency fixes (`>>`)  
- FSM designs → Require stage alignment  

---

## Verification

The project includes a structured verification framework:

- Formal verification (SymbiYosys - structured setup)
- Equivalence checking (Verilog vs TL-Verilog)
- Simulation using testbenches

> Note: Verification setup is currently structured and documented. Full tool execution can be integrated as future work.

---

## Design Patterns

The project defines reusable mappings:

- Sequential logic → Pipeline stages  
- Non-blocking assignments → `>>` dependencies  
- FSM logic → Conditional expressions  
- Datapath → Staged computation  

---

## Limitations

- AI may miss pipeline dependencies in complex designs  
- FSM sequencing may require manual refinement  
- Output quality depends on prompt design  

---

## Future Work

- Integrate real AI APIs for automation  
- Add simulation-based validation  
- Improve prompt intelligence  
- Expand dataset with more complex designs  
- Automate verification pipeline  

---

## Conclusion

This project demonstrates that:

- AI can effectively assist in Verilog to TL-Verilog conversion  
- Simple designs are handled accurately  
- Complex designs require refinement and validation  

The system provides a scalable framework for AI-assisted hardware design transformation.

---

## 👨‍💻 Author

- Name: chilla kalyan
- Project: AI-Assisted Verilog to TL-Verilog Refactoring

---

## ⭐ Acknowledgment

This project is inspired by modern hardware design methodologies and the need for higher abstraction in digital design using TL-Verilog.
