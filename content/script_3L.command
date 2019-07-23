#!/bin/bash          
# Created on 20 July 2019 by Joshua Scriven
# OS: MacOS
# Uses Pandoc to create Academic PDF from multiple md files nested in <5 levels
# IMPORTANT: set bib tex file path in .txt file.


cd -- "$(dirname "$BASH_SOURCE")"

filename="BIB_PATH.txt"
while read -r BIB_PATH; do
    name="$BIB_PATH"
done < "$filename"

# pandoc `( ls *.md **/*.md **/*/*.md **/*/*/*.md)` -o out.pdf --filter pandoc-citeproc --bibliography="$BIB_PATH" --template="~/Documents/GitHub-MiniMack/global_template_files/svm-latex-ms.tex"
pandoc `( ls *.md **/*.md **/*/*.md **/*/*/*.md)` -o paper_out_`date +%d_%b_%Y__%H_%M_%S`.pdf --filter pandoc-citeproc --bibliography="$BIB_PATH" --template="/Volumes/MAC HD/joshuascriven/Documents/GitHub-MiniMack/global_template_files/svm-latex-ms.tex"
# pandoc `( ls *.md **/*.md **/*/*.md **/*/*/*.md)` -o out-paper.pdf --filter pandoc-citeproc --bibliography="$BIB_PATH" --template="/Volumes/MAC HD/joshuascriven/Documents/GitHub-MiniMack/global_template_files/pandoc_official_template.tex"

osascript -e 'tell application "Terminal" to close first window'
