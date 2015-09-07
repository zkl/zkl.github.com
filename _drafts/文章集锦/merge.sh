#!/bin/bash

DOCPATH=document
DOCFILE=articles


cat $DOCPATH/* > $DOCFILE.md

pandoc -o $DOCFILE.epub -t epub3 --epub-stylesheet=css/stylesheet.css $DOCFILE.md

kindlegen $DOCFILE.epub
