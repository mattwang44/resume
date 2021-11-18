#!/bin/sh -l

src=$1
cd $src && sh -c "for file in *.tex; do pdflatex $file; done"

pdf_path=$(find . -name "*.tex"  -exec basename \{\} .po \;  | tr '\n' ' ')
echo "::set-output name=pdf_path::$pdf_path"