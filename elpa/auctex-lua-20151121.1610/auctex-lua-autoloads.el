;;; auctex-lua-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:

(add-to-list 'load-path (or (and load-file-name (directory-file-name (file-name-directory load-file-name))) (car load-path)))



;;; Generated autoloads from auctex-lua.el

(defvar LaTeX-Lua-environments '("luacode" "luacode*") "\
List of environments that will contain Lua code.")
(custom-autoload 'LaTeX-Lua-environments "auctex-lua" t)
(autoload 'LaTeX-edit-Lua-code-start "auctex-lua" "\
Place Lua code in a separate buffer in `lua-mode'." t)
(register-definition-prefixes "auctex-lua" '("LaTeX-"))

;;; End of scraped data

(provide 'auctex-lua-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; auctex-lua-autoloads.el ends here