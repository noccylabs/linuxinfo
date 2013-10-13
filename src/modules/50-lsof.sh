#!/bin/bash
echo "=== OPEN FILES PER PROCESS NAME ======"
lsof | awk '{ print $1; }' | sort -rn | uniq -c | sort -rn | head
echo ""
echo "=== OPEN FILES PER PROCESS ID ======"
lsof | awk '{ print $2; }' | sort -rn | uniq -c | sort -rn | head
