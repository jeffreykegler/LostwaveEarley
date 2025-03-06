
.phony: all clean aspell earley.pdf

.SUFFIXES: .pdf .ltx

.ltx.pdf:
	pdflatex $<

all:
	pdflatex earley.ltx

aspell:
	cat earley.ltx | aspell list --home-dir=. --personal=aspell-ignore.txt -t | sort | uniq

