#!/bin/bash

# Tapologo I. Lungani 201701304
# Karabo K. Tebelelo  201701145

# Question One
# To extract the sequence on line number 13th.

LineNumber13th=$(sed -n 14p Corona.fasta)
echo "The 13th line is $LineNumber13th"

# To count the number of lines in the file "corona".

NumberOfLines=$(awk '!/>/{print }' Corona.fasta | tail -n +1 | wc -l)
echo "Total number of lines in the file is $NumberOfLines"

# To count the number of characters in the file.

NumberOfCharacters=$(awk '!/>/{print }' Corona.fasta | wc -c)
echo "The total number of characters is $NumberOfCharacters"

# To count only 'T' in the file.

NumberOfTs=$( grep -o T Corona.fasta | wc -l)
echo "Total number of T's is $NumberOfTs"

# To count the number of times symbols occur.
echo 'Enter Sequence'
read sequence
ifA = grep -o A <<< $sequence | wc -l
ifC = grep -o C <<< $sequence | wc -l
ifG = grep -o G <<< $sequence | wc -l
ifT = grep -o T <<< $sequence | wc -l
echo "$ifA $ifC $ifG $ifT"
