
import os
from generate_tlv import generate_tlv
from evaluate_results import evaluate

DATASET_DIR = "../datasets/01-raw_verilog"
OUTPUT_DIR = "../src/02-ai_generated_tlv"

def run_pipeline():
    for file in os.listdir(DATASET_DIR):
        if file.endswith(".v"):
            file_path = os.path.join(DATASET_DIR, file)
            
            print(f"\nProcessing: {file}")
            
            # Step 1: Generate TL-Verilog
            tlv_code = generate_tlv(file_path)
            
            # Step 2: Save output
            output_file = os.path.join(OUTPUT_DIR, file.replace(".v", ".tlv"))
            with open(output_file, "w") as f:
                f.write(tlv_code)
            
            # Step 3: Evaluate
            evaluate(file_path, output_file)

if __name__ == "__main__":
    run_pipeline()
