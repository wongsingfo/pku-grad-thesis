# vim: set ft=perl:
# Copyright (c) 2019 Casper Ti. Vector
# Public domain.
# Credit to http://ctan.math.washington.edu/tex-archive/support/latexmk/latexmk.pdf

@default_files = ('thesis.tex');

# Generate pdf using:
# 1, generate a pdf version of the document using pdflatex, using the command specified by the $pdflatex variable.
# 3：generate a pdf version of the document from the dvi file, by using the command specified by the $dvipdf variable. 
# 5：generate a pdf version (and an xdv version) of the document using xelatex, using the commands specified by the 
#    $xelatex and xdvipdfmx variables.
$pdf_mode = 5;

$xelatex = 'xelatex -synctex=1 -interaction=nonstopmode --shell-escape -no-pdf %O %S';
$xdvipdfmx = "xdvipdfmx -q -E -o %D %O %S";

$bibtex_use = 1.5;

$biber = "biber -l zh__pinyin --output-safechars %O %S";

# latexmk -c 时自动删除 .run.xml 文件。
$clean_ext = "run.xml";

$makeindex = "makeindex -s gind.ist %O -o %D %S";