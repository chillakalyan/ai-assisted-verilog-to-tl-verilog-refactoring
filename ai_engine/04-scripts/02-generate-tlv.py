
def load_prompt(template_path)
    with open(template_path, "r") as f:
        return f.read()

def load_verilog(file_path):
    with open(file_path, "r") as f:
        return f.read()

def generate_tlv(verilog_file):
    prompt_path = "../ai_engine/01-prompts/01-basic-conversion.txt"
    
    prompt = load_prompt(prompt_path)
    verilog_code = load_verilog(verilog_file)
    
    final_prompt = prompt.replace("[PASTE VERILOG CODE HERE]", verilog_code)
    
    # 🔥 TODO: Replace with actual API call
    tlv_output = mock_ai_response(final_prompt)
    
    return tlv_output


def mock_ai_response(prompt):
    # Temporary placeholder
    return "// TL-Verilog output (mock)\n// Replace with actual AI call\n"
