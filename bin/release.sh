#!/bin/bash

./bin/build.sh || exit 1
cp cccontact.pdf Crash-Course-Contact.pdf || exit 1

echo ""
echo "Done releasing Crash-Course-Contact.pdf"
exit 0
