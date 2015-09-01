@echo off

pandoc 项目管理文章.md -o 项目管理文章.epub -t epub3 --epub-stylesheet stylesheet.css

kindlegen 项目管理文章.epub


pandoc 项目管理文章.md -o 项目管理文章.html -s -c style.css


