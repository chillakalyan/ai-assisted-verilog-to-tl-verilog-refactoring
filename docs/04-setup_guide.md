
# Setup Guid

## Requirements

- Python 3.x
- Basic knowledge of Verilog and TL-Verilog
- Code editor (VS Code recommended)

---

## Project Structure
```
project/
├── datasets/
├── ai_engine/
├── src/
├── docs/
├── 04-scripts/
```

---

## Installation

1. Clone the repository:
   git clone https://github.com/chillakalyan/ai-assisted-verilog-to-tl-verilog-refactoring

2. Navigate to project folder:
   cd project

3. Install dependencies (if any):
   pip install -r requirements.txt

---

## Running the Pipeline

1. Ensure dataset is available:
   datasets/01-raw_verilog/

2. Run pipeline script:
   python 04-scripts/01-run-pipeline.py

---

## Output Location

Generated TL-Verilog files:
src/02-ai_generated_tlv/

---

## Notes

- Ensure prompt templates are clean
- Do not hardcode Verilog in prompts
- Always use full Verilog modules
