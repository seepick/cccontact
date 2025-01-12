#!/bin/bash

pandoc -o cccontact.docx cccontact.tex || exit 1
echo ""
echo "Done ✅"
echo "See: cccontact.docx"
echo
echo "WARNING: section references are not printed, and glossary entries are used with their shortcode (doc issue)!"
exit 0
