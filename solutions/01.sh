#!/bin/bash
dir="$1"
find "$dir" -type f -size +1048576c -printf '%s\t%P\n' | sort -t$'\t' -k1,1nr -k2,2