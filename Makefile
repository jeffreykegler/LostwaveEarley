
.phony: all clean aspell

.SUFFIXES: .pdf .ltx

.ltx.pdf:
	pdflatex $<

all: llgProof.pdf

aspell:
	cat llgProof.ltx | aspell list --home-dir=. --personal=aspell-ignore.txt -t | sort | uniq

