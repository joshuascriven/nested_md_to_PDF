#!/bin/bash
# Created on 20 July 2019 by Joshua Scriven
# Uses Pandoc to create Academic PDF from multiple md files nested in <5 levels
# IMPORTANT: set bib tex file path in .txt file.

cd -- "$(dirname "$BASH_SOURCE")"

filename="PATH_BIB.txt"
while read -r PATH_BIB; do
    name="$PATH_BIB"
done < "$filename"

filename="PATH_TEMPLATE.txt"
while read -r PATH_TEMPLATE; do
    name="$PATH_TEMPLATE"
done < "$filename"

# Ignores notes and drafts by requiring underscore for inclusion
pandoc `( ls *_*.md *_*/*_*.md *_*/*_*/*_*.md *_*/*_*/*_*/*_*.md)` -o paper_out_`date +%d_%b_%Y__%H_%M_%S`.pdf --filter pandoc-citeproc --bibliography="$PATH_BIB" --template="$PATH_TEMPLATE"

osascript -e 'tell application "Terminal" to close first window'
