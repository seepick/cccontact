#!/bin/bash

echo "Building contactbook.pdf ..."
pdflatex contactbook
makeglossaries contactbook
pdflatex contactbook

echo "Successfully done."
open contactbook.pdf
