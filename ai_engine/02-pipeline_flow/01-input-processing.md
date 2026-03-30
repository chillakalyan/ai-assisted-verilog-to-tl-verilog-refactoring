
## Input Processing

## Objective
Prepare raw Verilog files for AI-based TL-Verilog conversion.

## Steps

1. Read Verilog file from dataset:
   - Location: datasets/01-raw_verilog/

2. Extract complete module:
   - Ensure code starts from `module`
   - Ends at `endmodule`

3. Validate code:
   - Check syntax completeness
   - Ensure no missing signals

4. Normalize formatting:
   - Remove unnecessary comments (optional)
   - Ensure consistent indentation

5. Inject into prompt:
   - Replace placeholder:
     [PASTE VERILOG CODE HERE]

## Output
Prepared prompt ready for AI conversion
