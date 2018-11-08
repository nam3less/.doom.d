;;;  -*- lexical-binding: t; -*-

;; projectile
(after! projectile
  (setq projectile-generic-command "find -L . -type f -print0"))

;; completion/company
(after! company
  (setq-default company-minimum-prefix-length 2))

(after! company-quickhelp
  (setq company-quickhelp-delay 0.4))

;; lang/javascript
(after! js2-mode
  (setq-default flycheck-javascript-standard-executable "semistandard"
                js2-basic-offset 2))

;; lang/org
(remove-hook 'org-mode-hook #'doom|disable-line-numbers)
(after! org
  (evil-org-set-key-theme '(navigation
                            insert
                            return
                            textobjects
                            heading
                            shift
                            todo
                            additional
                            calendar))
  (setq org-html-html5-fancy t
        org-html-doctype "html5")
  (map! :map org-mode-map
        :localleader
        (:desc "Export" :n "e" #'org-export-dispatch)))

; lang/tex
(after! latex
  (map! :map LaTeX-mode-map
        :localleader
        (:desc "View line" :n "v" #'TeX-view)
        (:desc "Command on master" :n "c" #'TeX-command-master)))

;;; config.el ends here
