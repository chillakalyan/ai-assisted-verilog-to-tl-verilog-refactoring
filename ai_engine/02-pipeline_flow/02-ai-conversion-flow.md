
## AI Conversion Flow

## Objective
Convert Verilog into TL-Verilog using structured prompts.

## Steps

1. Select prompt template:
   - Basic → simple modules
   - Pipeline → ALU / datapath
   - FSM → control logic

2. Insert Verilog code into prompt

3. Send prompt to AI model

4. Generate TL-Verilog output

## Output Rules

- Only TL-Verilog code
- No explanations
- Maintain functionality
- Preserve timing behavior

## Output Location

src/02-ai_generated_tlv/
