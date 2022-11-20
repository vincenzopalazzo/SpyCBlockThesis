(TeX-add-style-hook
 "tesi-frn"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("frontespizio" "nowrite" "infront" "standard" "signatures")))
   (TeX-run-style-hooks
    "inputenc"
    "frontespizio")
   (LaTeX-add-environments
    '("example" LaTeX-env-args ["argument"] 0)))
 :latex)

