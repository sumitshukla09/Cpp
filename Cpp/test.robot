# my_script.py

def main():
    print("? This script is running directly (not imported).")

print("? This line runs no matter what.")

# This block only runs if the script is executed directly
if __name__ == "__main__":
    main()
else:
    print("?? This script was imported as a module.")
