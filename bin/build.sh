#!/bin/bash

echo "Building contactbook.pdf ..."
pdflatex contactbook || exit 1
makeglossaries contactbook || exit 1
pdflatex contactbook || exit 1

# NOPE, not needed, as in latex file downgraded via: \pdfminorversion=3
# flatten transparencies: ps2pdf -dHaveTransparency=false
# pdf2ps document.pdf document.ps
# ps2pdf13 document.ps document-v1.3.pdf

echo "Successfully done."
open contactbook.pdf
exit 0
