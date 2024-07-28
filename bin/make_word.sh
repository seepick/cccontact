#!/bin/bash

pandoc -o contactbook.docx contactbook.tex || exit 1
echo ""
echo "Done ✅"
echo "See: contextbook.docx"
echo
echo "WARNING: section references are not printed, and glossary entries are used with their shortcode (doc issue)!"
exit 0
