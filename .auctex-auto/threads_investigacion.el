(TeX-add-style-hook
 "threads_investigacion"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("babel" "spanish")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "listings"
    "enumitem"
    "babel")
   (LaTeX-add-labels
    "sec:label"))
 :latex)

