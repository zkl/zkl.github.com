DOCPATH = document
DOCFILE = ProgrammingLinuxGames

$(DOCFILE) : 
	cat $(DOCPATH)/* > $@.md
	pandoc -o $(DOCFILE).epub -t epub3 --toc --toc-depth=2 --epub-stylesheet=css/style.css $(DOCFILE).md
	! kindlegen $(DOCFILE).epub

clean : 
	rm -rf $(DOCFILE).md
	rm -rf $(DOCFILE).epub
	rm -rf $(DOCFILE).mobi
