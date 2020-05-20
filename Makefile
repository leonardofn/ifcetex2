########################################################################
##                                                                    ##
## Customizações do abnTeX2 (https://github.com/abntex/abntex2)       ##
## para o Instituto Federal de Educação, Ciência e Tecnologia         ##
## do Ceará (IFCE).                                                   ##
##                                                                    ##
## This work may be distributed and/or modified under the             ##
## conditions of the LaTeX Project Public License, either version 1.3 ##
## of this license or (at your option) any later version.             ##
##                                                                    ##
## The latest version of this license is in                           ##
##      http://www.latex-project.org/lppl.txt                         ##
## and version 1.3 or later is part of all distributions of LaTeX     ##
## version 2005/12/01 or later.                                       ##
##                                                                    ##
## This work has the LPPL maintenance status 'maintained'.            ##
##                                                                    ##
## The Current Maintainer of this work is Leonardo Feitosa.           ##
##                                                                    ##
## Project available on: https://github.com/leonardofn/ifcetex2       ##
##                                                                    ##
## Further information about abnTeX2 are available on                 ##
##      https://github.com/abntex/abntex2                             ##
##                                                                    ##
########################################################################

filename=documento

all: compile
	
compile:
	@echo "*********************************************************"
	@echo "*                                                       *"
	@echo "* Package 'ueceTeX2' Release 1.0 -- 17 de Dezembro 2014 *"
	@echo "*                                                       *"
	@echo "*********************************************************"
	@echo "Compilando..."
	pdflatex $(filename).tex
	bibtex $(filename)
	makeglossaries $(filename)
	makeindex $(filename)
	pdflatex $(filename).tex
	pdflatex $(filename).tex
	@echo "Processo finalizado com sucesso!"

	
clean:
	@echo -n "Limpando arquivos auxiliares...\n"
	@rm -f *.out *.aux *.alg *.acr *.dvi *.gls *.log *.bbl *.blg *.ntn *.not *.lof *.lot *.toc *.loa *.lsg *.nlo *.nls *.ilg *.ind *.ist *.glg *.glo *.xdy *.acn *.idx *.loq *~
	@rm -f $(filename).pdf
	@echo "Processo finalizado com sucesso!"
