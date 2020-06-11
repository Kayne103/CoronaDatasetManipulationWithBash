#!/bin/bash

# Tapologo I. Lungani 201701304
# Karabo K. Tebelelo  201701145

# Note that explanations of commands used are in a separate file "Notes.txt".
# Comments here explain what command options do.

# Question One
# To extract the string on line number 13th.

LineNumber13th=$(sed -n 14p Corona.fasta) # '-n' suppress automatic printing of pattern sequence, '14p' means the 14 line which is the 13th line since we ignore the first line.
echo "The 13th line is $LineNumber13th"

# To count the number of lines in the file "corona".

NumberOfLines=$(awk '{print }' Corona.fasta | tail -n +2 | wc -l) # "-l" print newline counts, '-n +1' print the last lines instead of 10 lines starting from line number 1.
echo "Total number of lines in the file is $NumberOfLines"

# To count the number of characters in the file.

NumberOfCharacters=$(awk '{print }' Corona.fasta | tail -n +1 | wc -m) # "-m" prints character counts, '{print}' print the output.
echo "The total number of characters is $NumberOfCharacters"

# To count only 'T' in the file.

NumberOfTs=$( grep -o T Corona.fasta | wc -l) # 'grep -o' print the only match from a matched line.
echo "Total number of T's is $NumberOfTs"

# To count the number of times symbols occur.
echo 'Enter Sequence'
read sequence
ifA=$(echo $sequence | tr -cd 'A' | wc -m) # 'tr -cd' removes all characters other than the one given in quotes.
ifC=$(echo $sequence | tr -cd 'C' | wc -m)
ifG=$(echo $sequence | tr -cd 'G' | wc -m)
ifT=$(echo $sequence | tr -cd 'T' | wc -m)
echo "$ifA $ifC $ifG $ifT"
