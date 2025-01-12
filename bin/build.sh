#!/bin/bash

if [[ `pwd` == */bin ]]
then
    cd ..
fi
FILE=cccontact

echo "Building {$FILE}.pdf ..."
pdflatex $FILE || exit 1
makeglossaries $FILE || exit 1
pdflatex $FILE || exit 1

# NOPE, not needed, as in latex file downgraded via: \pdfminorversion=3
# flatten transparencies: ps2pdf -dHaveTransparency=false
# pdf2ps document.pdf document.ps
# ps2pdf13 document.ps document-v1.3.pdf

echo "Successfully done."
open ${FILE}.pdf
exit 0
