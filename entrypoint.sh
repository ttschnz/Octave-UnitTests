#!/bin/sh -l

class_name=$1
directory=$2
packages=$3

echo "packages:\n$packages"
for package in $packages; do
    echo "package: $package"
    octave --eval "pkg install $package"
done

cd $directory

output=$(octave --path "/octave-modules" --eval "matlab.unittest.run_tests('$class_name')" 2>&1)

echo "Octave output:\n$output"

string_to_check="ans = 1"
# Check if the string was found
if echo "$output" | grep -q "$string_to_check"; then
    echo "output matched '$string_to_check'"
    exit 1
fi
echo "output didn't match '$string_to_check'"
