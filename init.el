(setq debug-on-error t)
;;For javascript setup read this http://blog.deadpansincerity.com/2011/05/setting-up-emacs-as-a-javascript-editing-environment-for-fun-and-profit/

;;Library Paths
(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/yasnippet")
(progn (cd "~/.emacs.d") (normal-top-level-add-subdirs-to-load-path))

;;Libraries to autoload
(require 'ido)
(require 'org)
(require 'whitespace)
(require 'flymake-cursor)
(require 'flymake-csslint)

;;Misc
(load-library "woco-misc")

;;CUDA mode
(autoload 'cuda-mode "cuda-mode.el")
(add-to-list 'auto-mode-alist '("\\.cu\\'" . cuda-mode))
(add-to-list 'auto-mode-alist '("\\.cuh\\'" . cuda-mode))

;;Javascript niceties
(load-library "woco-lintnode")

;;YASnippet
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/yasnippet/snippets")
(load-library "woco-yasnippet")

;;uniquify, for more descriptive buffer names
(require 'uniquify)

;;Autocomplete (from http://cx4a.org/software/auto-complete/)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
(setq ac-use-menu-map t)
(load-library "woco-autocomplete")

;;IDO mode
(load-library "woco-ido")

;;Tramp mode
(load-library "woco-tramp")

;;Electric pairs
(load-library "electric-pairs")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-echo-syntactic-information-p nil)
 '(c-report-syntactic-errors nil)
 '(cpp-face-type (quote dark))
 '(flymake-csslint-program "/usr/local/bin/csslint")
 '(global-whitespace-mode t)
 '(global-whitespace-newline-mode nil)
 '(ido-auto-merge-delay-time 100)
 '(ido-decorations (quote ("{" "}" " | " " | ..." "[" "]" " [nope.avi]" " [winrar]")))
 '(ido-separator nil)
 '(js-auto-indent-flag t)
 '(js-basic-offset 4)
 '(js-curly-indent-offset 0)
 '(js-expr-indent-offset 0)
 '(js-paren-indent-offset 0)
 '(js-square-indent-offset 0)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(whitespace-action nil)
 '(whitespace-global-modes t)
 '(whitespace-space-after-tab (quote whitespace-space-after-tab))
 '(whitespace-style (quote (face trailing lines space-before-tab newline empty space-after-tab newline-mark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "gray8" :foreground "burlywood2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "unknown" :family "Ubuntu Mono"))))
 '(highlight ((((class color) (min-colors 88) (background dark)) (:background "IndianRed4"))))
 '(ido-first-match ((t (:weight bold))))
 '(ido-subdir ((((min-colors 88) (class color)) (:foreground "peru"))))
 '(ido-subdir-face ((((class color)) (:foreground "peru"))))
 '(minibuffer-prompt ((((background dark)) (:background "grey75" :foreground "grey7" :weight semi-bold))))
 '(mode-line ((((class color) (min-colors 88)) (:background "gray75" :foreground "salmon4" :box (:line-width -1 :color "black" :style released-button)))))
 '(mode-line-inactive ((default (:inherit mode-line)) (((class color) (min-colors 88) (background dark)) (:background "grey30" :foreground "salmon1" :box (:line-width -1 :color "grey40") :weight light))))
 '(whitespace-hspace ((t (:background "grey24" :foreground "darkGrey")))))
