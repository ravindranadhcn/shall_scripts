#!/bin/bash

multiline_string="
Line 1   
    Line 2

Line 4
"

# Read lines into an array, filtering out empty lines with awk
readarray -t my_array < <(echo "$multiline_string" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//' | awk 'NF > 0')

# Print the array elements
for element in "${my_array[@]}"; do
  echo "Element: $element"
done
