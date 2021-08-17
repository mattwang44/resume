#!/bin/sh -l

echo "Input path: $1"
sh -c "pdflatex $1"

pdf_path="$(echo "$1" | cut -f 1 -d '.').pdf"
echo "::set-output name=pdf_path::$pdf_path"