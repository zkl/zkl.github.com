#!/bin/bash

DOCPATH=document
DOCFILE=articles


cat $DOCPATH/* > $DOCFILE.md

pandoc -o $DOCFILE.epub -t epub3 --toc --toc-depth=1 --epub-stylesheet=css/style.css $DOCFILE.md

kindlegen $DOCFILE.epub
