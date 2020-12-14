#!/bin/bash
if [ $# -ne 2 ]; then
echo "This script requires a protein file"
exit 1
fi
if [ ! -f $2 ]; then
echo "Cannot find protein file"
exit 1
fi
echo -n "Number of $1 amino acids in $2: "
grep $1 $2 | grep CA | wc | awk '{print$1}'
