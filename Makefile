latex:
	latexmk -output-directory=out -aux-directory=out -pdf -pdflatex="pdflatex --shell-escape %O %S" homework.tex

fedoradeps:
	sudo yum install latexmk texlive-newlfm texlive-geometry texlive-ulem \
	texlive-xcolor texlive-hyperref texlive-minted texlive-fancyhdr \
	texlive-amsmath texlive-thmtools texlive-amsfonts texlive-algorithmicx

open:
	xdg-open out/*.pdf &

clean:
	rm -rf out
