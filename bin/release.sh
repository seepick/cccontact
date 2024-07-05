#!/bin/bash

./bin/build.sh || exit 1
cp contactbook.pdf Contact-Book.pdf || exit 1

echo ""
echo "Done releasing Contact-Book.pdf"
exit 0
