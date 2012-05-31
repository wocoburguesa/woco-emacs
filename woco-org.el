;;Auto org-mode on .org files
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

;;Some bindings
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)

;;Stuff
(setq org-log-done f)