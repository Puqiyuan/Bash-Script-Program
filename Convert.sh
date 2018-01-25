#!/bin/bash
DIR=nice

if [ ! -d  "$DIR" ]; then

    mkdir nice
    for file in *.nas *c *.txt *.h; do
	iconv -f SHIFT-JIS -t UTF-8 $file > $file.nice
    done
    mv *.nice nice
    cd nice

    for file in *.nice; do
	mv "$file" "${file%?????}"
    done

    rename 'y/A-Z/a-z/' *

    for x in *.nas; do mv "$x" "${x%.nas}.asm"; done
fi
    cp ~/Makefile .
    cp /home/pqy7172/RongOS/z_tools/ ../ -r
