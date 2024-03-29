;;; highline-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "highline" "highline.el" (0 0 0 0))
;;; Generated autoloads from highline.el

(autoload 'highline-customize "highline" "\
Customize highline group." t nil)

(autoload 'highline-mode "highline" "\
Toggle global minor mode to highlight line about point (HL on modeline).

With ARG, turn highline mode on if ARG is positive, off otherwise.
Only useful with a windowing system.

\(fn &optional ARG)" t nil)

(autoload 'highline-mode-on "highline" "\
Turn on global minor mode to highlight line about point (HL on modeline)." t nil)

(autoload 'highline-mode-off "highline" "\
Turn off global minor mode to highlight line about point (HL on modeline)." t nil)

(autoload 'highline-local-mode "highline" "\
Toggle local minor mode to highlight the line about point (hl on modeline).

With ARG, turn highline mode on if ARG is positive, off otherwise.
Only useful with a windowing system.

\(fn &optional ARG)" t nil)

(autoload 'highline-on "highline" "\
Turn on local highlighting of the current line in buffer (hl on modeline)." t nil)

(autoload 'highline-off "highline" "\
Turn off local highlighting of the current line in buffer (hl on modeline)." t nil)

(autoload 'highline-view-mode "highline" "\
Toggle indirect mode to highlight current line in buffer (Ihl on modeline).

With ARG, turn highline mode on if ARG is positive, off otherwise.
Only useful with a windowing system.

Indirect highline (`highline-view-on', `highline-view-off' and
`highline-view-mode') is useful when you wish to have various \"visions\" of
the same buffer.

Indirect highline uses an indirect buffer to get the \"vision\" of the buffer.
So, if you kill an indirect buffer, the base buffer is not affected; if you
kill the base buffer, all indirect buffer related with the base buffer is
automagicaly killed.  Also, any text insertion/deletion in any indirect or base
buffer is updated in all related buffers.

See also `highline-selected-window'.

\(fn &optional ARG)" t nil)

(autoload 'highline-view-on "highline" "\
Turn on indirect highlightining current line in buffer (Ihl on modeline).

Indirect highline (`highline-view-on', `highline-view-off' and
`highline-view-mode') is useful when you wish to have various \"visions\" of
the same buffer.

Indirect highline uses an indirect buffer to get the \"vision\" of the buffer.
So, if you kill an indirect buffer, the base buffer is not affected; if you
kill the base buffer, all indirect buffer related with the base buffer is
automagicaly killed.  Also, any text insertion/deletion in any indirect or base
buffer is updated in all related buffers.

See also `highline-selected-window'." t nil)

(autoload 'highline-view-off "highline" "\
Turn off indirect highlightining current line in buffer (Ihl on modeline).

Indirect highline (`highline-view-on', `highline-view-off' and
`highline-view-mode') is useful when you wish to have various \"visions\" of
the same buffer.

Indirect highline uses an indirect buffer to get the \"vision\" of the buffer.
So, if you kill an indirect buffer, the base buffer is not affected; if you
kill the base buffer, all indirect buffer related with the base buffer is
automagicaly killed.  Also, any text insertion/deletion in any indirect or base
buffer is updated in all related buffers.

See also `highline-selected-window'." t nil)

(register-definition-prefixes "highline" '("highli"))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; highline-autoloads.el ends here
