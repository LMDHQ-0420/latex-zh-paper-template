$xelatex = '/Library/TeX/texbin/xelatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';
$bibtex  = '/Library/TeX/texbin/bibtex %O %B';
$ENV{PATH} = '/Library/TeX/texbin:' . $ENV{PATH};
