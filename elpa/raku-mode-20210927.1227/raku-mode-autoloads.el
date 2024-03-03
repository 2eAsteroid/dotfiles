;;; raku-mode-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:

(add-to-list 'load-path (or (and load-file-name (directory-file-name (file-name-directory load-file-name))) (car load-path)))



;;; Generated autoloads from raku-detect.el

(add-to-list 'interpreter-mode-alist '("perl6\\|raku" . raku-mode))
(add-to-list 'auto-mode-alist '("\\.p[lm]?6\\'" . raku-mode))
(add-to-list 'auto-mode-alist '("\\.nqp\\'" . raku-mode))
(add-to-list 'auto-mode-alist '("\\.raku\\(?:mod\\|test\\)?\\'" . raku-mode))
(defconst raku-magic-pattern (rx line-start (0+ space) (or (and "use" (1+ space) "v6") (and (opt (and (or "my" "our") (1+ space))) (or "module" "class" "role" "grammar" "enum" "slang" "subset")))))
(autoload 'raku-magic-matcher "raku-detect" "\
Check if the current buffer is a Raku file.

Only looks at a buffer if it has a file extension of .t, .pl, or .pm.

Scans the buffer (to a maximum of 4096 chars) for the first non-comment,
non-whitespace line.  Returns t if that line looks like Raku code,
nil otherwise.")
(add-to-list 'magic-mode-alist '(raku-magic-matcher . raku-mode))


;;; Generated autoloads from raku-font-lock.el

(register-definition-prefixes "raku-font-lock" '("raku-"))


;;; Generated autoloads from raku-imenu.el

(register-definition-prefixes "raku-imenu" '("nqp-name-regex" "raku-"))


;;; Generated autoloads from raku-indent.el

(register-definition-prefixes "raku-indent" '("raku-"))


;;; Generated autoloads from raku-mode.el

(autoload 'raku-mode "raku-mode" "\
Major mode for editing Raku code.

(fn)" t)
(register-definition-prefixes "raku-mode" '("perl6-mode" "raku-mode-map"))


;;; Generated autoloads from raku-repl.el

(register-definition-prefixes "raku-repl" '("raku-" "run-raku"))


;;; Generated autoloads from raku-skeletons.el

(register-definition-prefixes "raku-skeletons" '("auth-id" "full-raku-path" "module-name" "raku-"))


;;; Generated autoloads from raku-unicode-menu.el

(register-definition-prefixes "raku-unicode-menu" '("menu-bar-final-items"))

;;; End of scraped data

(provide 'raku-mode-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; raku-mode-autoloads.el ends here