# Makefile
# written by Takuya Miyashita (miyashita@hydrocoast.jp)
# Graduate student, Kyoto University
# last modified Nov. 2018

KANJI := utf8
PLATEX := platex -kanji=$(KANJI)
PBIB := pbibtex -kanji=$(KANJI)
DVIPDF := dvipdfmx -p a4

.PHONY: all clean
all: ronbun
ronbun:
	$(eval FILE := ronbun-j)
	$(PLATEX) $(FILE)
	$(PLATEX) $(FILE)
	$(DVIPDF) $(FILE)

bibtex:
	$(eval FILE := bibtex-j)
	$(PLATEX) $(FILE)
	$(PBIB) $(FILE)
	$(PLATEX) $(FILE)
	$(PLATEX) $(FILE)
	$(DVIPDF) $(FILE) 

soufu:
	$(eval FILE := soufuhyo2e)
	$(PLATEX) $(FILE)
	$(DVIPDF) $(FILE) 

clean:
	-rm -f *~ *.log *.dvi *.blg *.aux *.out *.bbl *.lot *.toc *.lof *.pdf

