#!/bin/bash
#
# Script Name: finder.sh
# Description: The number of files are X and the number of matching lines are Y where X is the number of files in the directory and all subdirectories and Y is the number of matching lines found in respective files 
# Author: Xinxing Wang
# Version: 1.0
# Date: January 27, 2025
#
# Arguments:
#	<filesdir>		A path to a directory on the filesystem
#	<searchstr>		A text string which will be searched
#
# Usage Examples:
#	./finder.sh filesdir searchstr
#
# Notes:
#	Ensure the script has executable permission, use chmod +x finder.sh to add permissions if necessary
#
# Function definitions and main program code start her...
#
# Exits with "return value 1 error" and print statements if any of the parameters above were not specified
# Exits with "return value 1 error" and print statements filesdir does not represent a directory on the filesystem

if [ $# -ne 2 ]; then
	echo "Usage: $0 <filesdir> <searchstr> "
	exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d "$filesdir" ]; then
	echo "Error: $filesdir is not a directory"
	exit 1
fi

file_count=$(find "$filesdir" -type f | wc -l)

matching_lines=$(grep -rI "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $file_count and the number of matching lines are $matching_lines"
