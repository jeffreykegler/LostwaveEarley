
.phony: all clean aspell earley.pdf

.SUFFIXES: .pdf .ltx

.ltx.pdf:
	pdflatex $<

all:
	pdflatex earley.ltx

# cannot figure out how to put aspell tex-command options into file
aspell:
	cat earley.ltx | ASPELL_CONF="add-extra-dicts ./aspell-ignore.txt; \
		add-tex-command NOaspell p; \
		add-tex-command Call p; \
		add-tex-command Function p; \
		add-tex-command newblock p; \
		add-tex-command Procedure p; \
		add-tex-command @starttoc p; \
		add-tex-command label p; \
		add-tex-command item o; \
		add-tex-command url p; \
		add-tex-command derivesV p; \
		add-tex-command destarV p; \
	   	add-tex-command V p; \
	   	add-tex-command Vsize p; \
	   	add-tex-command VFA pp; \
	   	add-tex-command element pp; \
	   	add-tex-command Velement pp; \
	   	add-tex-command VVelement pp; \
	   	add-tex-command Algref p; \
	   	add-tex-command Dfref p; \
	   	add-tex-command Lmref p; \
	   	add-tex-command Obref p; \
	   	add-tex-command Thref p; \
	   	add-tex-command eqref p; \
	   	add-tex-command genref opp; \
	   	add-tex-command pdfbookmark opp; \
	   	add-tex-command listoftheorems o; \
		add-tex-command caption p" aspell list -t \
			| sort | uniq

