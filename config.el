(setq user-full-name "Robin Beckmann"
      user-mail-address "robin.m.beckmann@gmail.com")

(setq doom-font (font-spec :family "Hack" :size 14)
      display-line-numbers-type 'visual)

(setq show-trailing-whitespace t)

(after! treemacs
  (treemacs-follow-mode))

(after! projectile
  (setq projectile-generic-command "find -L . -type f -print0"))

(after! company
  (setq-default company-minimum-prefix-length 1))

(after! company-quickhelp
  (setq company-quickhelp-delay 0.2))

(after! eshell
  (set-eshell-alias!
   "la" "ls -lA"
   "ll" "ls -l"))

(after! js2-mode
  (setq-default flycheck-javascript-standard-executable "semistandard"
                js2-basic-offset 2
                js-indent-level 2)
  (setq js2-basic-offset 2
        js-indent-level 2))

(after! java-mode
  (setq-default c-basic-offset 4))

(setq company-box-icons-acphp '(nil))

(after! latex
  (map! :map LaTeX-mode-map
        :localleader
        (:desc "View line" :n "v" #'TeX-view)
        (:desc "Command on master" :n "c" #'TeX-command-master)))

(remove-hook 'org-mode-hook #'doom|disable-line-numbers)

(after! org
  (setq org-html-html5-fancy t
        org-html-doctype "html5"))

(after! org
  (add-to-list 'org-latex-classes
               '("koma-article"
                 "\\documentclass[11pt]{scrartcl}"
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                 ("\\paragraph{%s}" . "\\paragraph*{%s}")
                 ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
  (add-to-list 'org-latex-classes
               '("koma-report"
                 "\\documentclass[11pt]{scrreprt}"
                 ("\\part{%s}" . "\\part*{%s}")
                 ("\\chapter{%s}" . "\\chapter*{%s}")
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")))
  (add-to-list 'org-latex-classes
               '("koma-book"
                 "\\documentclass[11pt]{scrbook}"
                 ("\\part{%s}" . "\\part*{%s}")
                 ("\\chapter{%s}" . "\\chapter*{%s}")
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")))
  (setq org-latex-default-class "kome-article"))

(after! org
  (setq evil-org-key-theme '(navigation
                             insert
                             return
                             textobjects
                             heading
                             shift
                             todo
                             additional
                             calendar)))

(after! org
  (map! :map org-mode-map
        :localleader
        (:desc "Export" :n "e" #'org-export-dispatch)))
