#!/bin/bash

echo "Building contactbook.pdf ..."
pdflatex contactbook || exit 1
makeglossaries contactbook || exit 1
pdflatex contactbook || exit 1

echo "Successfully done."
open contactbook.pdf
exit 0
