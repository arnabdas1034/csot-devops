#!/bin/bash
awk 'NF {print $1}' "$1" | sort -u | wc -l