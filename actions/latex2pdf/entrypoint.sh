#!/bin/sh -l

cd $1
for file in *.tex; do pdflatex $file; done

pdf_path=$(find . -name "*.tex"  -exec basename \{\} .po \;  | tr '\n' ' ')
echo "::set-output name=pdf_path::$pdf_path"