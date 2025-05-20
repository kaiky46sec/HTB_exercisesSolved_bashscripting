#!/bin/bash
# Count number of characteres in a variable:
#   echo $variable | wc -c

# Variable to encode
var="nef892na9s1p9asn2aJs71nIsm"

for counter in {1..40}
do
    var=$(echo $var | base64)

    if [ $counter -eq 35 ]; then
        echo "HTB EXERCISE ANSWER: ${#var}"
    fi
done