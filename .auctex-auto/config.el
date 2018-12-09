(TeX-add-style-hook
 "config"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("scrartcl" "11pt") ("scrreprt" "11pt") ("scrbook" "11pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("ulem" "normalem")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "scrartcl"
    "scrartcl11"
    "inputenc"
    "fontenc"
    "graphicx"
    "grffile"
    "longtable"
    "wrapfig"
    "rotating"
    "ulem"
    "amsmath"
    "textcomp"
    "amssymb"
    "capt-of"
    "hyperref"
    "scrreprt"
    "scrreprt11"
    "scrbook"
    "scrbook11")
   (LaTeX-add-labels
    "sec:org026e606"
    "sec:org28321b2"
    "sec:org71c68dd"
    "sec:org67d0059"
    "sec:org1d936c0"
    "sec:orgbdb19da"
    "sec:org0eddbc5"
    "sec:org4ab5b5a"
    "sec:org08d7872"
    "sec:org02389b0"
    "sec:orgc49d638"
    "sec:org520a9b7"
    "sec:org0c3b68b"
    "sec:org1d128c7"
    "sec:org924d690"))
 :latex)

