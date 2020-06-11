#!/bin/bash

# Tapologo I. Lungani 201701304
# Karabo K. Tebelelo  201701145

# Question Three
# Complement and reverse a string.

declare -a reversedOutput
echo 'Enter String To Be Complemented & Reversed.'
read sequence
charA="$(echo $sequence | tr A a)"
charB="$(echo $charA | tr T A)"
charC="$(echo $charB | tr C c)"
charD="$(echo $charC | tr G C)"
charE="$(echo $charD | tr c G)"
charF="$(echo $charE | tr a T)"

reversedOutput="$(echo $charF | rev)"
echo "Result : $reversedOutput"
