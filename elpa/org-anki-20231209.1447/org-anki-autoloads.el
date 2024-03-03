;;; org-anki-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:

(add-to-list 'load-path (or (and load-file-name (directory-file-name (file-name-directory load-file-name))) (car load-path)))



;;; Generated autoloads from org-anki.el

(autoload 'org-anki-sync-entry "org-anki" "\
Synchronize entry at point." t)
(autoload 'org-anki-sync-all "org-anki" "\
Syncronize all entries in optional BUFFER.

(fn &optional BUFFER)" t)
(autoload 'org-anki-update-all "org-anki" "\
Updates all entries in optional BUFFER.

Updates all entries that have ANKI_NOTE_ID property set.

(fn &optional BUFFER)" t)
(autoload 'org-anki-delete-entry "org-anki" "\
Delete org entry under cursor." t)
(autoload 'org-anki-cloze-dwim "org-anki" "\
Convert current active region or word under cursor to Cloze
syntax.

(fn &optional ARG HINT)" t)
(autoload 'org-anki-browse-entry "org-anki" "\
Browse entry at point on anki's browser dialog with searching nid" t)
(autoload 'org-anki-import-deck "org-anki" "\
Import deck with NAME to current buffer, or to BUFFER when provided.

This is a best-effort command which doesn't support all of Anki's
features. Its use case is to import a deck to an .org which from
then on will be used as source-of-truth for the notes.

Pandoc is required to be installed.

(fn NAME &optional BUFFER)" t)
(register-definition-prefixes "org-anki" '("org-anki-" "plist-to-assoc"))

;;; End of scraped data

(provide 'org-anki-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; org-anki-autoloads.el ends here