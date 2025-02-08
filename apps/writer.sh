#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Usage: $0 <writefile> <writerstr>"
	exit 1
fi

writefile="$1"
writestr="$2"

mkdir -p "$(dirname "$writefile")"

if ! echo "$writestr" > "$writefile"; then
	echo "Error: could not write to file $writefile"
	exit 1
fi

echo "Successfully wrote '$writestr' to $writefile"
