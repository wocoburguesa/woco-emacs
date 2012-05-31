;;Library Paths
(add-to-list 'load-path "~/.emacs.d")
(progn (cd "~/.emacs.d") (normal-top-level-add-subdirs-to-load-path))

;;Libraries to autoload
(require 'ido)
(require 'org)
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/yasnippet/snippets")

;;Python
(load-library "woco-python")
(load-library "woco-ropemacs")
(require 'ropemacs)

;;IDO mode
(load-library "woco-ido")

;;Electric pairs
(load-library "electric-pairs")

;;Misc
(load-library "woco-misc")
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(c-echo-syntactic-information-p nil)
 '(c-report-syntactic-errors nil)
 '(cpp-face-type (quote dark))
 '(ido-auto-merge-delay-time 100)
 '(ido-decorations (quote ("{" "}" " | " " | ..." "[" "]" " [nope.avi]" " [winrar]")))
 '(ido-separator nil))
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
 '(mode-line-inactive ((default (:inherit mode-line)) (((class color) (min-colors 88) (background dark)) (:background "grey30" :foreground "salmon1" :box (:line-width -1 :color "grey40") :weight light)))))
