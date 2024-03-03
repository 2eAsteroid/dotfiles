;;; early-init.el -- Early Initialization File -- -*- coding: utf-8; lexical-binding: t; -*-

(setq gc-cons-threshold 100000000) ; Sets Garbage Collection Threshold to 100 miBi

(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("nongnu" . "https://elpa.nongnu.org/nongnu/")
			 ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(setq package-list
      '(
        autothemer
        company
        highline
        org-bullets
        rainbow-mode
        rich-minority
        rubocop
        rust-mode
        use-package
        visual-fill-column
        bind-key
        dash
        dashboard
        ))

(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))
