#!/bin/bash
read -p "Input a directory(/path/to/dir/*):" dir
lines=0
for file in $dir
do
	if [[ $file == *akefile ]] || [[ $file == *.asm ]] || [[ $file == *.c ]] || [[ $file == *.h ]]; then
	   cur=$(cat $file | wc -l)
	   lines=$((lines + cur))
	fi
done

echo "Totot lines in *.c, *.h, *.asm and Makefile files: $lines"
