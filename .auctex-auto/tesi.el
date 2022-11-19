(TeX-add-style-hook
 "tesi"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("toptesi" "11pt" "a4paper" "titlepage")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("babel" "italian") ("fontenc" "T1") ("geometry" "pass") ("rotating" "figuresright") ("csquotes" "babel") ("biblatex" "backend=bibtex") ("frontespizio" "swapnames") ("subfigure" "normal")))
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "chap_blockchain"
    "chap_bitcoin"
    "chap_bitcoincore"
    "chap_problema"
    "chap_riferimenti_storici"
    "chap_tecnologie_utilizzate"
    "chap_soluzione_proposta"
    "chap_conclusioni"
    "app_a"
    "toptesi"
    "toptesi11"
    "inputenc"
    "babel"
    "fontenc"
    "blindtext"
    "wrapfig"
    "booktabs"
    "lmodern"
    "varioref"
    "url"
    "array"
    "paralist"
    "verbatim"
    "amsmath"
    "amsfonts"
    "amssymb"
    "multicol"
    "multirow"
    "listings"
    "geometry"
    "rotating"
    "algorithm"
    "algorithmic"
    "csquotes"
    "hyperref"
    "biblatex"
    "xcolor"
    "enumitem"
    "titlesec"
    "caption"
    "dirtytalk"
    "lipsum"
    "amsthm"
    "frontespizio"
    "graphicx"
    "subfigure")
   (TeX-add-symbols
    '("source" 1)
    "listofcodes"
    "chapter")
   (LaTeX-add-environments
    '("example" LaTeX-env-args ["argument"] 0))
   (LaTeX-add-bibliographies
    "bibliography")
   (LaTeX-add-xcolor-definecolors
    "cosmogreen"
    "cosmoorange"
    "cosmoblue"
    "cosmored"
    "cosmoblack")
   (LaTeX-add-amsthm-newtheorems
    "example")
   (LaTeX-add-array-newcolumntypes
    "C"))
 :latex)

