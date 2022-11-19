(TeX-add-style-hook
 "thesis"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("toptesi" "11pt" "english")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("babel" "english") ("fontenc" "T1") ("geometry" "pass") ("rotating" "figuresright") ("csquotes" "babel") ("biblatex" "backend=bibtex")))
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
    "chap_qui"
    "chap_quo"
    "chap_qua"
    "app_a"
    "toptesi"
    "toptesi11"
    "inputenc"
    "babel"
    "fontenc"
    "blindtext"
    "graphicx"
    "wrapfig"
    "booktabs"
    "lmodern"
    "varioref"
    "url"
    "array"
    "paralist"
    "verbatim"
    "subfig"
    "tabularx"
    "amsmath"
    "amsfonts"
    "float"
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
    "biblatex")
   (TeX-add-symbols
    "listofcodes"
    "chapter")
   (LaTeX-add-environments
    '("example" LaTeX-env-args ["argument"] 0))
   (LaTeX-add-bibliographies
    "bibliography"))
 :latex)

