;;Go to PATH/TO/lintnode/flymake-jslint.el and modify the lintnode-start function
;;to include this
;;(lintnode-set (if (not lintnode-jslint-set)
;;                               ""
;;                             (mapconcat 'identity (mapcar 'symbol-name lintnode-jslint-set) ","))))
;;Otherwise it fails because lintnode-jslint-set is set to nil and later used as string
;;Fixed by wocoburguesa

(add-to-list 'load-path "~/Documents/Utilidades/lintnode")
(require 'flymake-jslint)
;; Make sure we can find the lintnode executable
(setq lintnode-location "~/Documents/Utilidades/lintnode")
;; JSLint can be... opinionated
(setq lintnode-jslint-excludes (list 'nomen 'undef 'plusplus 'onevar 'white))
;; Start the server when we first open a js file and start checking
(add-hook 'js-mode-hook
          (lambda ()
            (lintnode-hook)))

;; Correct indentation according to Crockford
(add-hook 'js-mode-hook
      (lambda ()
	(setq indent-tabs-mode nil)))
