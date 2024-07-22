#!/bin/bash

pandoc -o contactbook.docx contactbook.tex || exit 1
echo ""
echo "Done ✅"
echo "See: contextbook.docx"
exit 0
