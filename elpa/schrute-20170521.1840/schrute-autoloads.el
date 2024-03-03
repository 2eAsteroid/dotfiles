;;; schrute-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:

(add-to-list 'load-path (or (and load-file-name (directory-file-name (file-name-directory load-file-name))) (car load-path)))



;;; Generated autoloads from schrute.el

(defvar schrute-mode nil "\
Non-nil if Schrute mode is enabled.
See the `schrute-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `schrute-mode'.")
(custom-autoload 'schrute-mode "schrute" nil)
(autoload 'schrute-mode "schrute" "\
Help you remember there is a better way to do something.

This is a global minor mode.  If called interactively, toggle the
`Schrute mode' mode.  If the prefix argument is positive, enable
the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='schrute-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t)
(autoload 'schrute-check-last-command "schrute" "\
Check what command was used last time.

It also check the time between the last two invocations of the
same command and use the alternative command instead.")
(register-definition-prefixes "schrute" '("schrute-"))

;;; End of scraped data

(provide 'schrute-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; schrute-autoloads.el ends here
