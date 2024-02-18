#!/bin/bash

echo "Building contatbook.pdf ..."
pdflatex contactbook
makeglossaries contactbook
pdflatex contactbook

echo "Successfully done."
open contactbook.pdf
