(require 'tramp)
;(setq tramp-default "sshx")

; taken from http://irreal.org/blog/?p=895
(add-to-list 'tramp-default-proxies-alist
             '(nil "\\`root\\'" "/ssh:%h:"))
(add-to-list 'tramp-default-proxies-alist
             '((regexp-quote (system-name)) nil nil))