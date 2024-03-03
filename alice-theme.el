;;; Commentary:
;;; Alice Theme

;;; Code:
(eval-when-compile
  (require 'cl-lib))

(require 'autothemer)

(unless (>= emacs-major-version 24)
  (error "Requires Emacs 24 or later."))

(autothemer-deftheme
 alice "A theme based on its precursor, Crypt, the VSCode Alabaster theme, and the Rosé Pina color palette."

 ((((class color) (min-colors #xFFFFFF))  ; Column 1, GUI/24bit
   ((class color) (min-colors #xFF)))    ; Column 2, Xterm/256

 ;Define our color palette
 (surface        "#3C2A33" "#FFFFFF")
 (text           "#E2E2EB" "#FFFFFF")
 (lace           "#FFDEF0" "#FFD7AF")
 (lace-low       "#4e454a" "#FFD7AF")
 (love           "#EB6F92" "#FF87AF")
 (iris           "#C4A7E7" "#D7D7FF")
 (foam           "#9CCFD8" "#00D7FF")
 (foam-low       "#272B37" "#00D7FF")
 (pine           "#7D9FBF" "#AFFFFF")
 (rose           "#EBBCBA" "#FFFFFF")
 (rose-low       "#302935" "#FFFFFF")
 (gold           "#F6C177" "#FFD7AF")
 (gold-low       "#312A2E" "#FFD7AF")
 (highlight-low  "#21202E" "#D7D7FF")
 (highlight-med  "#403D52" "#D7D7FF")
 (highlight-high "#524F67" "#D7D7FF")
 (subtle         "#908CAA" "#FFFFFF")
 (muted          "#6E6A86" "#FFFFFF")
 (overlay        "#4E3A43" "#FFFFFF")
 (base           "#382B31" "#FFFFFF")
 (ex             "#16141F" "#F00000"))

;; Customize faces
(
 (default                                   (:background surface :foreground text))
 (border                                    (:foreground muted))
 (bookmark-face                             (:foreground love))
 (button                                    (:foreground foam))
 (child-frame                               (:foreground base))
 (child-frame-border                        (:foreground base))
 (cursor                                    (:background lace :foreground base))
 (error                                     (:foreground love))
 (link                                      (:foreground iris))
 (fringe                                    (:foreground overlay))
 (file-name-shadow                          (:foreground muted))
 (glyph-face                                (:background love :foreground muted))
 (glyphless-char                            (:foreground muted))
 (header-line                               (:background base :foreground rose))
 (highlight                                 (:background lace :foreground base :distant-foreground base))
 (hl-line                                   (:background overlay))
 (homoglyph                                 (:foreground foam))
 (line-number                               (:foreground highlight-high))
 (line-number-current-line                  (:background overlay :foreground iris))
 (match                                     (:background lace :foreground base))
 (menu                                      (:foreground rose))
 (fill-column-indicator                     (:foreground overlay))
 (mode-line                                 (:background base :foreground muted))
 (mode-line-inactive                        (:background overlay :height 150))
 (mode-line-active                          (:foreground rose :background base :height 150))
 (mode-line-highlight                       (:foreground rose))
 (mode-line-buffer-id                       (:foreground text))
 (numbers                                   (:background lace))
 (region                                    (:background text :foreground highlight-med))
 (tooltip                                   (:background muted :foreground base))
 (shadow                                    (:foreground muted))
 (success                                   (:foreground pine))
 (vertical-border                           (:foreground overlay))
 (warning                                   (:foreground lace))
 (window-divider                            (:foreground surface :distant-foreground base))
 (whitespace-newline                        (:foreground muted))
 (whitespace-space                          (:foreground muted))
 (whitespace-trailing                       (:foreground base :background love))

 ;;; Font Lock
 (font-lock-keyword-face                    (:background surface :foreground text))
 (font-lock-type-face                       (:background surface :foreground text))
 (font-lock-builtin-face                    (:background surface :foreground text))
 (font-lock-function-name-face              (:foreground pine))
 (font-lock-variable-name-face              (:background surface :foreground text))
 (font-lock-function-call-face              (:background surface :foreground text))
 (font-lock-operator-face                   (:background surface :foreground text))
 (font-lock-number-face                     (:foreground iris))
 (font-lock-constant-face                   (:foreground iris))
 (font-lock-escape-face                     (:foreground iris))
 (font-lock-comment-face                    (:foreground gold))
 (font-lock-doc-face                        (:foreground gold))
 (font-lock-string-face                     (:foreground gold))
 (font-lock-warning-face                    (:foreground gold))
 (font-lock-constant-face                   (:foreground rose))
 (font-lock-regexp-grouping-backslash       (:foreground foam))
 (font-lock-reference-face                  (:foreground foam))
 (font-lock-negation-char-face              (:foreground love))
 (font-lock-comment-delimiter-face          (:foreground gold))
 (font-lock-doc-markup-face                 (:foreground gold))
 (font-lock-preprocessor-face               (:foreground gold))
 (elisp-shorthand-font-lock-face            (:foreground gold))
 (highlight-operators-face                  (:background surface :foreground text))
 (highlight-quoted-symbol                   (:foreground iris))
 (highlight-numbers-face                    (:foreground iris))
 (highlight-symbol-face                     (:foreground iris))











 (org-block                                 (:background surface :foreground text))))

(provide-theme 'alice)
;;; alice-theme.el ends here
