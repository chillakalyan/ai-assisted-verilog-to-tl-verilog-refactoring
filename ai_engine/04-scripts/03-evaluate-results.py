
def evaluate(verilog_file, tlv_file)
    print("Evaluating results...")
    
    with open(verilog_file, "r") as f:
        verilog = f.read()
        
    with open(tlv_file, "r") as f:
        tlv = f.read()
    
    score = 0
    
    # Simple checks
    if "module" in verilog and "module" in tlv:
        score += 1
        
    if "reset" in verilog.lower() and "reset" in tlv.lower():
        score += 1
        
    if "@" in tlv:
        score += 1  # pipeline stage hint
    
    print(f"Score: {score}/3")
