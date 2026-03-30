
import o

DATASET_DIR = "../datasets/01-raw_verilog"

def list_dataset():
    print("Available Verilog files:\n")
    
    for file in os.listdir(DATASET_DIR):
        if file.endswith(".v"):
            print(f"- {file}")

def validate_files():
    print("\nValidating dataset...\n")
    
    for file in os.listdir(DATASET_DIR):
        if file.endswith(".v"):
            path = os.path.join(DATASET_DIR, file)
            
            with open(path, "r") as f:
                content = f.read()
                
                if "module" in content and "endmodule" in content:
                    print(f"{file}: OK")
                else:
                    print(f"{file}: INVALID")

if __name__ == "__main__":
    list_dataset()
    validate_files()
