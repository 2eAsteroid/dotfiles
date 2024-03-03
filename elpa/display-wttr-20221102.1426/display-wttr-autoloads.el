;;; display-wttr-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:

(add-to-list 'load-path (or (and load-file-name (directory-file-name (file-name-directory load-file-name))) (car load-path)))



;;; Generated autoloads from display-wttr.el

(put 'display-wttr-string 'risky-local-variable t)
(put 'display-wttr-list 'risky-local-variable t)
(put 'display-wttr-timer 'risky-local-variable t)
(autoload 'display-wttr "display-wttr" "\
Enable display of wttr in mode line.
This display updates automatically every hour.  This runs the
normal hook `display-wttr-hook' after each update." t)
(defvar display-wttr-mode nil "\
Non-nil if Display-Wttr mode is enabled.
See the `display-wttr-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `display-wttr-mode'.")
(custom-autoload 'display-wttr-mode "display-wttr" nil)
(autoload 'display-wttr-mode "display-wttr" "\
Toggle display of wttr.

When Display Wttr mode is enabled, it updates every hour (you can
control the number of seconds between updates by customizing
`display-wttr-interval').

This is a global minor mode.  If called interactively, toggle the
`Display-Wttr mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='display-wttr-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t)
(register-definition-prefixes "display-wttr" '("display-wttr-"))

;;; End of scraped data

(provide 'display-wttr-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; display-wttr-autoloads.el ends here
