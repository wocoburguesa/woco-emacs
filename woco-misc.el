;;;Open files in UTF-8
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; Highlight matching brackets
(show-paren-mode 1)
;; with no delay
(setq show-paren-delay 0)

;;;Use horizontal split only
;;;(setq split-height-threshold nil)
;;;(setq split-width-threshold 80)

;; Maximize vertically emacs on startup, based on resolution
(defun set-frame-size-according-to-resolution ()
  (interactive)
  (if (display-graphic-p)
  (progn
    ;; use 80 char wide window
    (add-to-list 'default-frame-alist (cons 'width 80))
    ;; for the height, subtract a couple hundred pixels
    ;; from the screen height (for panels, menubars and
    ;; whatnot), then divide by the height of a char to
    ;; get the height we want
    (add-to-list 'default-frame-alist 
         (cons 'height (/ (- (x-display-pixel-height) 180)
                             (frame-char-height)))))))
(set-frame-size-according-to-resolution)
