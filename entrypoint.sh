#!/bin/sh -l

class_name=$1
output=$(octave --path "/octave-modules" --eval "matlab.unittest.run_tests('$class_name')" 2>&1)
echo -e "Octave output:\n$output"

string_to_check="ans = 1"
# Check if the string was found
if echo "$output" | grep -q "$string_to_check"; then
    echo "output matched '$string_to_check'"
    exit 1
fi
echo "output didn't match '$string_to_check'"
