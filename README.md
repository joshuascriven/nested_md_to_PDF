# Convert Nested Markdown Structure to PDF with Bibliography

- `script_3L.command` (not visible in Windows) and `script_3L.txt` both contain the bash script for creating the PDF. Double-clicking the .command version will execute the script in the Mac Terminal. The .txt version is included for those who wish to edit and/or input the script into Terminal (Mac) or Command Prompt (Windows).
- `BIB_PATH.txt` contains the path of the bibtex file with citations to be used for your bibliography.
- `TEMPLATE_PATH.txt` contains the path of the LaTex template to be used when pandoc compilec the PDF from your markdown.
- `0_head.md` contains the YAML header used to update numerous parameters which are fed to pandoc.
- `z_Bibliography.md` contains the placeholder for the bibliography section's header.

## Markdown files included in compilation
Folders with no underscores will be ignored. This is helpful for directories containing notes and supporting files written in markdown. You can easily include these in a compile by adding an underscore to the folder name.

## Known Issues

Filenames (full path) with spaces will produce an error when fed to Pandoc. I've used underscores in the example files/folders.

