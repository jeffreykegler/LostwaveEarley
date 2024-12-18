
.phony: all clean aspell

.SUFFIXES: .pdf .ltx

.ltx.pdf:
	pdflatex $<

all: masking.pdf

aspell:
	cat masking.ltx | aspell list --home-dir=. --personal=aspell-ignore.txt -t | sort | uniq

