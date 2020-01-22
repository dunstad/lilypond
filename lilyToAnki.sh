#!/bin/bash

fileName=$1

mkdir -p $fileName

lilypond -dpreview -e '(define cardify #t)' -o $fileName $fileName.ly

for i in $fileName/*.midi; do timidity "$i" -Ow; done

python3 anki.py $fileName