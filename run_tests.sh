#!/bin/bash
# Compile the project automatically.
g++ main.cpp user_code.cpp -o solution

# For each input file (.in) in the current directory,
# run the solution with corresponding expected (.out) and actual (.actual) files.
for f in *.in; do
    filename=$(basename "$f" .in)
    echo "Running test case: $f"
    ./solution "$f" "${filename}.out" "${filename}.actual"
done

read -p "Press Enter to continue..."
