@echo off

pandoc ��Ŀ��������.md -o ��Ŀ��������.epub -t epub3 --epub-stylesheet stylesheet.css

kindlegen ��Ŀ��������.epub


pandoc ��Ŀ��������.md -o ��Ŀ��������.html -s -c style.css


