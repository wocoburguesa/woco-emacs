;;; Electric Pairs
(defun electric-pair ()
  "Insert character pair without sournding spaces"
  (interactive)
  (let (parens-require-spaces)
    (insert-pair)))

;;Python
(add-hook 'python-mode-hook
     (lambda ()
      (define-key python-mode-map "\"" 'electric-pair)
      (define-key python-mode-map "\'" 'electric-pair)
      (define-key python-mode-map "(" 'electric-pair)
      (define-key python-mode-map "[" 'electric-pair)
      (define-key python-mode-map "{" 'electric-pair)))

;;LaTeX
(add-hook 'latex-mode-hook
     (lambda ()
      (define-key latex-mode-map "\"" 'electric-pair)
      (define-key latex-mode-map "\'" 'electric-pair)
      (define-key latex-mode-map "(" 'electric-pair)
      (define-key latex-mode-map "[" 'electric-pair)
      (define-key latex-mode-map "{" 'electric-pair)))

;;BiBTex
(add-hook 'bibtex-mode-hook
     (lambda ()
      (define-key bibtex-mode-map "\"" 'electric-pair)
      (define-key bibtex-mode-map "\'" 'electric-pair)
      (define-key bibtex-mode-map "(" 'electric-pair)
      (define-key bibtex-mode-map "[" 'electric-pair)
      (define-key bibtex-mode-map "{" 'electric-pair)))

;;OZ
(add-hook 'oz-mode-hook
     (lambda ()
      (define-key oz-mode-map "\"" 'electric-pair)
      (define-key oz-mode-map "\'" 'electric-pair)
      (define-key oz-mode-map "(" 'electric-pair)
      (define-key oz-mode-map "[" 'electric-pair)
      (define-key oz-mode-map "{" 'electric-pair)))

;;C++
(add-hook 'c++-mode-hook
     (lambda ()
      (define-key c++-mode-map "\"" 'electric-pair)
      (define-key c++-mode-map "\'" 'electric-pair)
      (define-key c++-mode-map "(" 'electric-pair)
      (define-key c++-mode-map "[" 'electric-pair)
      (define-key c++-mode-map "{" 'electric-pair)))

;;C
(add-hook 'c-mode-hook
     (lambda ()
      (define-key c-mode-map "\"" 'electric-pair)
      (define-key c-mode-map "\'" 'electric-pair)
      (define-key c-mode-map "(" 'electric-pair)
      (define-key c-mode-map "[" 'electric-pair)
      (define-key c-mode-map "{" 'electric-pair)))

;;HTML
(add-hook 'html-mode-hook
     (lambda ()
      (define-key html-mode-map "\"" 'electric-pair)
      (define-key html-mode-map "\'" 'electric-pair)
      (define-key html-mode-map "(" 'electric-pair)
      (define-key html-mode-map "[" 'electric-pair)
      (define-key html-mode-map "<" 'electric-pair)
      (define-key html-mode-map "{" 'electric-pair)))

;;Javascript
(add-hook 'js-mode-hook
     (lambda ()
      (define-key js-mode-map "\"" 'electric-pair)
      (define-key js-mode-map "\'" 'electric-pair)
      (define-key js-mode-map "(" 'electric-pair)
      (define-key js-mode-map "[" 'electric-pair)
      (define-key js-mode-map "<" 'electric-pair)
      (define-key js-mode-map "{" 'electric-pair)))
