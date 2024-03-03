(defconst *2e/full-name* "Daniel Lin"
  "Stores your full name.")
(defconst *2e/display-name* "Daniel L."
  "Stores your display name.")
(defconst *2e/email* "two-e-asteroid@outlook.com"
  "Stores your main email address.")

(when (display-graphic-p)        ; When Emacs is running as a GUI (gooey???) application
  (blink-cursor-mode 0)          ; Stops the cursor from blinking; it's actually kind of annoying now that I think about it
  (scroll-bar-mode 0)            ; Removes the scroll bar at the right -- you don't /really/ need this
  (tool-bar-mode 0)              ; Removes the buttons, "fit a square into a circular hole" tool bar (Or is this the textual one?)
  (tooltip-mode 0))              ; Removes tool tips from appearing in popup windows
(setq use-dialog-box nil         ; For dialog regarding stuff, don't use a popup window
      use-file-dialog nil)       ; Same thing as above, except for files, me thinks

(setq-default                             ; This sets variables, but for buffer-local vars, it sets it as the default.
 ad-redefinition-action 'accept           ; This makes it so that when you redefine an existing function, it accepts that, and won't warn you about it. Developer knows best..

 auto-window-vscroll nil                  ; This makes vertical scrolling better for terminals.

 confirm-kill-emacs 'y-or-n-p             ; Allows you to kill Emacs with just y and n. I don't think you need to be typing words out here.

 cursor-in-non-selected-windows nil       ; You're not editing in those windows, so you don't have to know where the cursor is.

 delete-by-moving-to-trash t              ; Takes deleted files to the trash, so you can quickly restore a file if needed.

 display-time-default-load-average nil    ; Removes the CPU load average after the time.

 display-time-format "%k:%M:%S (%Z)"      ; Displays the time as "24 Hours With Fill: Minutes : Seconds (Time Zone)"

 fill-column 80                           ; This controls when stuff like Auto-Fill-Mode will wrap.

 help-window-select t                     ; This gives the focused window spotlight to help windows when you open them

 indent-tabs-mode nil                     ; The classic Tabs v. Spaces argument. Shut the fuck up.

 inhibit-startup-screen t                 ; This removes the classic but sadly out-of-place starting screen.

 initial-scratch-message ""               ; Instead of some helpful statements, we don't give the scratch buffer a message

 mouse-yank-at-point t                    ; Making Emacs mouse yanking a bit better, je pense...

 ns-use-srgb-colorspace nil               ; Using Adobe RGB instead of standardRGB, since it has more colors

 select-enable-clipboard t                ; Mind-melding the system clipboard with the Emacs clipboard, to make stuff easier.

 sentence-end-double-space nil            ; Double SPACES ?!?

 show-help-function nil                   ; 'Tis for the tool bar, which we don't use

 show-trailing-whitespace t               ; Making trailing whitespace more visible

 split-height-threshold 80                ; Some window splitting stuff

 split-width-threshold 40                 ; Same thing here

 tab-width 4                              ; A 4 tab-width is standard

 uniquify-buffer-name-style 'forward      ; In case of the same file name, this'll show the different directories the files are in, with a "/".

 window-combination-resize t              ; Resizes the windows proportionally

 x-stretch-cursor nil                     ; Makes the cursor stretch to fit the glyph it's on, which looks kind of bad, actually

 delete-old-versions nil                  ; Storage is cheap, while ideas are ephemeral

 version-control t                        ; Version control is useful always

 ring-bell-function 'ignore               ; Shut up, PLEASE

 inhibit-compacting-font-caches t         ; Uses more memory, but speedier

 recentf-mode t                           ; Shows recent files

 make-backup-files t                      ; Ideas are ephemeral

 display-line-numbers-type 'relative      ; Just in case I use display-line-numbers (Never-ish)

 vc-follow-symlinks t                     ; Symlinks

 use-default-font-for-symbols nil         ; We don't want the same font for everything, unless we specify it.

 frame-inhibit-implied-resize nil         ; Symlink

 pop-up-windows nil)                      ; Just annoying

(cd "~/")                                 ; Takes us to the home directory.

(delete-selection-mode 1)                 ; Instead of just yanking to the buffer, we remove what we highlighted when we yank to text

(display-time)                            ; What does this do? Only time will tell.

(global-auto-revert-mode 1)               ; Changes on the disk means changes in Emacs

(fringe-mode '(8 . 0))                    ; Leaves some space on the left for git / magit(?)

(electric-pair-mode t)                    ; Automatically inserts closing parentheses, etc.

(electric-indent-mode t)                  ; Automatically indents for you

(defalias 'yes-or-no-p 'y-or-n-p)         ; More conciseness! Yummy

(global-subword-mode 1)                   ; It can now iterate through camelCase words

(menu-bar-mode 0)                         ; It's still kind of useful

(mouse-avoidance-mode 'jump)              ; No more collisions

(put 'downcase-region 'disabled nil)      ; Enables downcase-region

(put 'upcase-region 'disabled nil)        ; Enables upcase-region

(show-paren-mode 1)                       ; Really useful -- it highlights the matching parentheses, or makes it turn a warning color

(add-hook 'calendar-mode-hook (lambda () (setq show-trailing-whitespace nil)))           ; Trailing whitespace makes it look weird

(if (string-equal window-system 'ns)
    (toggle-frame-maximized)
  (toggle-frame-fullscreen))

(add-hook 'focus-out-hook #'garbage-collect)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(set-default-coding-systems 'utf-8)
(set-language-environment "UTF-8")
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(require 'no-littering)
  (setq no-littering-etc-directory
    (expand-file-name "config/" user-emacs-directory))               ; Puts all configuration files in a "config" folder.
  (setq no-littering-var-directory
    (expand-file-name "data/" user-emacs-directory))                 ; Puts all data files in a "data" folder.

(setq user-emacs-directory "C:/Users/linyi/AppData/Roaming/.emacs.d/")

  (require 'recentf)
  (add-to-list 'recentf-exclude                                          ; Excludes all no-littering files from recentf
           (recentf-expand-file-name no-littering-var-directory))
  (add-to-list 'recentf-exclude                                          ; ^
           (recentf-expand-file-name no-littering-etc-directory))

  (setq custom-file (no-littering-expand-etc-file-name "custom.el"))     ; Stores Emacs' configuration interface in the config folder, called custom.el

(require 'gcmh)
(setq gcmh-low-cons-threshold 800000            ; This is the normal garbage-collection rate, when you're actively working
      gcmh-high-cons-threshold #x40000000       ; This is the idling garbage-collection rate
      gcmh-idle-delay 15                        ; How much time needs to pass to count as idle delay. Or, you can set it to auto.
      gcmh-auto-idle-delay-factor 20            ; A factor that calculates the idle delay time, if you set the idle delay to auto.
      )

(defun 2e/open-config-org-file ()                                      ; A function that opens up your configuration file
  (interactive)
  (find-file (expand-file-name "config.org" user-emacs-directory)))

(defun 2e/add-function-to-multiple-hooks (func hooks)                  ; This adds the same function to multiple hooks
  (mapc (lambda (hook)
      (add-hook hook func))
    hooks))

(defun 2e-emacs-remind (reminder parent)
(with-output-to-temp-buffer "Reminder"
  (princ (format "%s\n" reminder))
  (princ (format-time-string "Sent at: %H:%M\n"))
  (princ (format "Sent by %s\n" parent)))
(alert-toast-notify `(:title ,parent :message ,reminder :data (:alarm default :long t))))

(add-hook 'prog-mode-hook 'hl-line-mode)  ; Makes the current line be highlighted

(cond ((string-equal window-system 'w32) (progn
                                            (when (member "Segoe UI Emoji" (font-family-list))
                                              (set-fontset-font t 'symbol (font-spec :family "Segoe UI Emoji") nil 'prepend)
                                              (set-fontset-font "fontset-default" '(#xFE00 . #xFE0F) "Segoe UI Emoji"))

                                            (when (member "Times New Roman" (font-family-list))
                                              (set-fontset-font "fontset-default" 'unicode "Times New Roman"))

                                            (when (member "Unifont" (font-family-list))
                                              (set-fontset-font t nil "Unifont" nil 'append)
                                              (set-fontset-font t nil "Unifont Upper" nil 'append)))
       (string-equal window-system 'x) (progn
                                          (when (member "Noto Color Emoji" (font-family-list))
                                            (set-fontset-font t 'symbol (font-spec :family "Noto Color Emoji") nil 'prepend)
                                            (set-fontset-font "fontset-default" '(#xFE00 . #xFE0F) "Noto Color Emoji"))

                                          (when (member "Unifont" (font-family-list))
                                            (set-fontset-font t nil "Unifont" nil 'append)
                                            (set-fontset-font t nil "Unifont Upper" nil 'append)))))

(require 'fira-code-mode)

(unless (member "Fira Code Symbol" (font-family-list))
  (fira-code-mode-install-fonts))

(fira-code-mode-set-font)
(setq fira-code-mode-disabled-ligatures '("*" "?=" "[]" "x"))
(add-hook 'prog-mode-hook 'fira-code-mode)

(load-theme 'crypt t)  ; Loads my theme

(require 'all-the-icons)

(add-hook 'prog-mode-hook 'rainbow-mode)     ; Enables rainbow mode (colors the background of colors, e.g. #FFFFFF) for programming modes

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)  ; Enables Rainbow Delimiters for Programming Languages

(defun 2e/mode-line-truncate-string-p (str)
  "returns non-nil if the string should be truncated"
  (or (< (window-total-width) split-width-threshold)
       (and (> (length str) mode-line-truncate-length)
       (not (one-window-p :no-minibuffer)))))

(defvar-local mode-line-truncate-length 15)                          ; How long should a string at least be until being truncated

(defun 2e/mode-line-truncate-string (str)                        ; Truncates the string function
  "Returns the truncated string, else return the original string."
  (if (2e/mode-line-truncate-string-p str)                              ; If the string should be truncated
      (concat (substring str 0 mode-line-truncate-length) "...")     ; Add the first 9 characters of the string and append a '...' at the end.
    str))                                                            ; Else, return original string

(defun 2e/mode-line-right-align-rest-width ()
  "Returns the length to be conserved at the right side of the modeline."
  (1+ (length display-time-string)))

(defun 2e/mode-line-right-align ()
  "Returns empty space using the default 'mode-line' face and leaving RESERVE space on the right."
  (propertize " "
          'display `(space . (:align-to (- (+ right right-fringe right-margin)  ,(2e/mode-line-right-align-rest-width)))))) ; This adds up all of the space at the right of the modeline, and subtracts the space we want to conserve

(defun 2e/static-blank ()
  "Returns a string of one space."
  " ")

(defun 2e/mode-line-modified ()
  "This returns a all-the-icons icon based on the modified state of the buffer."
  (let* (
         (config-alist                                                             ; Lets `config-alist` to be a list of information that we pull from
        '(("*" all-the-icons-faicon "chain-broken" :height 1.2 :v-adjust -0.0)     ; If it's `*`, then call `all-the-icons-faicon` on "chain-broken :height 1.2 :v-adjust -0.0"
          ("-" all-the-icons-faicon "link" :height 1.2 :v-adjust -0.0)             ; If it's `-`, then call `all-the-icons-faicon` on "link :height 1.2 :v-adjust -0.0"
          ("%" all-the-icons-faicon "lock" :height 1.2 :v-adjust 0.1)))            ; If it's `%`, then call `all-the-icons-faicon` on "lock :height 1.2 :v-adjust 0.1"
       (result (cdr (assoc (format-mode-line "%*") config-alist))))                ; Since it's `let*`, the variables are bound sequentially and so `result` can use `config-alist`.
      (propertize (format "%s" (apply (car result) (cdr result)))                  ; We return a propertized string
          'face `(:family ,(all-the-icons-faicon-family))                          ; The family of the font is the string returned from the function `all-the-icons-faicon-family`
          'help-echo (if (string-equal (cadr result) "chain-broken")               ; We add a minibuffer display when we hover over the icon.
                 (format "Buffer: `%s` is modified." (buffer-name))
                   (if (string-equal (cadr result) "link")
                   (format "Buffer: `%s` is saved." (buffer-name))
                   (format "Buffer: `%s` is read-only." (buffer-name)))))))

(defun 2e/mode-line-region-info ()
  "Returns a string containing information from the current region, if there is any. The left number is the lines in the region, and the right number is the characters in the region."
  (when mark-active                                                ; When the mark is active (there's actually a highlighted region)
  (let ((lines (count-lines (region-beginning) (region-end)))      ; Set `lines` to be the amount of lines in the region
        (chars (- (region-end) (region-beginning))))               ; Sets `chars` to be the characters in the region
    (concat                                                        ; Adds the pencil octicon to the information
     (propertize (format "%s " (all-the-icons-octicon "pencil"))
                 'face `(:family ,(all-the-icons-octicon-family))
         'display `(raise -0.0))
     (propertize (format "%s:%s" lines chars)
                 'face `(:height 0.9))))))

(defun 2e/mode-line-region-buffer-info ()
  "Returns either the output of `2e/mode-line-region-info`, or if there isn't a region marked, then return a string containing information from the entire buffer, with the left number being the lines in the buffer, and the right number being the characters in the buffer."
  (if mark-active
    (2e/mode-line-region-info)
  (concat
   (propertize
    (format "%s" (all-the-icons-octicon "pencil"))
    'face `(:family ,(all-the-icons-octicon-family))
    'display `(raise -0.0))
   (propertize
    (concat
     (format "%s:" (car (buffer-line-statistics)))
     "%i")
    'face `(:height 0.9)))))

(defun 2e/mode-line-buffer-name ()
  (2e/mode-line-truncate-string
   (format "%s"
           (propertize (2e/mode-line-truncate-string
                        (buffer-name))
                       'help-echo (format "Buffer Name: `%s`" (buffer-name))
                       'face `(:foreground "#dfffee")))))

(defun 2e/mode-line-mode-icon ()
  "Returns the mode icon of the buffer."
  (propertize
   (format "%s" (all-the-icons-icon-for-mode major-mode :v-adjust 0.0))
   'help-echo (format "Major Mode: `%s`" major-mode)
   'face `(:height 170 :family ,(all-the-icons-icon-family-for-buffer))))

(defun 2e/mode-line-github-vc ()
  (if vc-mode
      (let ((branch (cdr (string-split vc-mode "[:-]"))))
        (concat
         (propertize
          (format "%s " (all-the-icons-octicon "git-branch"))
          'face `(:family ,(all-the-icons-octicon-family) :height 1.3)
          'display `(raise -0.1))
         (propertize (2e/mode-line-truncate-string
                      (format "%s" branch))
                     'face `(:height 0.9))))
    (concat
     (propertize
      (format "%s " (all-the-icons-octicon "git-branch"))
      'face `(:family ,(all-the-icons-octicon-family) :height 1.3)
      'display `(raise -0.1))
     (propertize (format "%s" "(git init)") 'face `(:height 0.9)))))

(defun 2e/mode-line-mode-vc-info ()
  (if vc-mode
      (let ((branch (cdr (string-split vc-mode "[:-]"))))
        (concat
         "("
         (2e/mode-line-mode-icon)
         ", "
         (propertize (2e/mode-line-truncate-string
                      (format "#%s" branch))
                     'face `(:height 0.9))
         ")"))
    (2e/mode-line-mode-icon)))


(require 'org-timer)
(defun 2e/mode-line-org-timer ()
  (unless (eq (org-timer-value-string) "0:00:00 ")
    (propertize (format "Timer: %s" (org-timer-value-string)) 'face `(:weight bold))))

(setq display-time-interval 1)                         ; Updates the time every second
(setq-default display-time-default-load-average nil)   ; Stops the time from displaying the load average
(display-time)                                         ; Starts displaying the time

(defun 2e/mode-line-time ()
  "returns the time with the associated clock icon with it."
  (let* ((hour (string-to-number (format-time-string "%I")))
         (icon (all-the-icons-wicon (format "time-%s" hour) :height 1.3 :v-adjust 0.0)))
    (concat
     (propertize (format-time-string " [%d/%a] %k:%M:%S (%z) ") 'face `(:height 0.9))
     (propertize (format "%s " icon) 'face `(:height 1.0 :family ,(all-the-icons-wicon-family)) 'display '(raise -0.0)))))

(setq-default mode-line-format
              '("%e"
                (:eval (2e/mode-line-modified))
                " "
                (:eval (2e/mode-line-buffer-name))
                " "
                (:eval (2e/mode-line-mode-vc-info))
                " | "
                (:eval (2e/mode-line-region-buffer-info))
                " | "
                (:eval (2e/mode-line-org-timer))
                (:eval (2e/mode-line-right-align))
                (:eval (2e/mode-line-time))
                ))

(setq-default header-line-format nil)

(require 'meow)

(meow-global-mode 1)

(meow-define-keys
    ;; state
    'normal
  ;; Movement Related Bindings
  '("w" . meow-prev)
  '("s" . meow-next)
  '("a" . meow-left)
  '("d" . meow-right)
  '("z" . backward-word)
  '("x" . forward-word)
  '("q" . beginning-of-line)
  '("e" . end-of-line)
  '("c" . avy-goto-char)
  ;; Selection / Editing Related Bindings
  '("i" . meow-bounds-of-thing)
  '("u" . "C-u - M-d")
  '("j" . meow-kill)
  '("y" . kill-word)
  '("p" . keyboard-quit)
  '("m" . hydra-windows/body)
  '("o" . meow-insert)
  '("k" . consult-buffer)
  '("l" . consult-line)
  '(";" . hydra-clipboard/body)
  '("]" . set-mark-command))

(setq meow-char-thing-table
      (list (append (string-to-list "i") 'round)
            (append (string-to-list "o") 'square)
            (append (string-to-list "u") 'curly)
            (append (string-to-list "w") 'string)
            (append (string-to-list "q") 'symbol)
            (append (string-to-list "~") 'window)
            (append (string-to-list "s") 'buffer)
            (append (string-to-list "a") 'paragraph)
            (append (string-to-list "d") 'line)
            (append (string-to-list "e") 'visual-line)
            (append (string-to-list "f") 'defun)
            (append (string-to-list "k") 'sentence)))

(setq doc-view-scale-internally t
      doc-view-resolution 600)

(require 'pdf-tools)
(pdf-tools-install)

(defun youtube-dl (link)
  "Interactively downloads a youtube video as music."
  (interactive "MYoutube Link: ")
  (async-shell-command (format "youtube-dl --extract-audio --output=\"C:/Users/linyi/OneDrive/Documents/Music/%%(title)s-%%(id)s.%%(ext)s\" --restrict-filenames --audio-format=\"mp3\" %s" link)))

(setq org-ellipsis nil)
(setq org-startup-folded t)
(add-hook 'org-mode-hook 'visual-line-mode)
(setq org-startup-indented t)

(setq org-modules '(org-bibtex
                    org-habit
                    org-info
                    org-bbdb
                    org-inlinetask
                    org-mew))

(require 'org-edit-latex)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (latex . t)))

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(require 'org-bullets)
(setq org-hide-leading-stars t)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(setq org-bullets-bullet-list '("⁖"))

(setq org-todo-keywords
      '((sequence "TODO(t)" "WORKING(w)" "SUBMIT(s)" "|" "DONE(d)" "PUSHED(p)" "RAISED(r)" "CANCELED(c)")))
                                        ; TODO: Tasks I haven't started yet and will do in the near near future
                                        ; WORKING: Tasks I'm currently working on -- this shouldn't exceed 3.
                                        ; SUBMIT: Tasks that I've finished, and am waiting to submit it
                                        ; DONE: Tasks that I don't have to ever think about again
                                        ; PUSHED: Tasks in old task lists that has been pushed to future task lists
                                        ; RAISED: Tasks in old task lists that has been raised up a level
                                        ; CANCELED: Tasks that has been canceled

(setq org-cite-export-processors
      '((md . (csl "chicago-fullnote-bibliography.csl"))
        (latex biblatex)
        (odt . (csl "chicago-fullnote-bibliography.csl"))
        (t . (csl "modern-language-association.csl"))))

(require 'zotra)

(require 'vertico-posframe)
(vertico-posframe-mode 1)
(vertico-mode 1)
(vertico-reverse-mode 1)
(vertico-mouse-mode 1)
(vertico-indexed-mode 1)
(setq vertico-count 15)
(setq vertico-resize 'grow-only)
(setq vertico-cycle t)
(global-set-key (kbd "M-SPC") 'vertico-exit-input)

(persistent-scratch-setup-default)
(setq persistent-scratch-backup-directory "~/scratch-backups/")

(setq spacious-padding-widths '(:internal-border-width 0 :right-divider-width 1 :scroll-bar-width 0))
(spacious-padding-mode)

(require 'keyfreq)
(keyfreq-mode 1)
(keyfreq-autosave-mode 1)

(indent-guide-global-mode t)
(add-hook 'org-mode-hook (lambda () (indent-guide-mode -1)))

(require 'olivetti)
(2e/add-function-to-multiple-hooks 'olivetti-mode '(text-mode-hook
                                                 prog-mode-hook
                                                 Info-mode-hook
                                                 pdf-view-mode-hook
                                                 org-mode-hook))

(set-frame-parameter nil 'alpha-background 70)
(add-to-list 'default-frame-alist '(alpha-background . 70))

(defun toggle-transparency ()
  (interactive)
  (let ((alpha (frame-parameter nil 'alpha)))
    (set-frame-parameter
     nil 'alpha
     (if (eql (cond ((numberp alpha) alpha)
                    ((numberp (cdr alpha)) (cdr alpha))
                    ;; Also handle undocumented (<active> <inactive>) form.
                    ((numberp (cadr alpha)) (cadr alpha)))
              100)
         '(85 . 50)
       '(100 . 100)))))

(global-set-key (kbd "C-c t") 'toggle-transparency)

(require 'marginalia)
(marginalia-mode 1)
(setq marginalia-max-relative-age 0)
(setq marginalia-align 'right)
(all-the-icons-completion-mode)
(add-hook 'marginalia-mode 'all-the-icons-completion-marginalia-setup)

(defun sudden-kill-line ()
  (interactive)
  (move-beginning-of-line nil)
  (kill-line)
  (kill-line)
  (previous-line)
  (end-of-line nil))

(defun org-fix-latex ()
  (interactive)
  (move-beginning-of-line nil)
  (insert "#+LATEX: "))

(global-auto-revert-mode t)
(global-set-key (kbd "C-k") 'sudden-kill-line)
(global-set-key (kbd "C-c m") 'dabbrev-expand)
(global-set-key (kbd "C-s") 'consult-line)
(global-set-key (kbd "C-x b") 'consult-buffer)
(global-set-key (kbd "C-x o") 'ace-window)
(global-set-key (kbd "C-c i") 'ibuffer)
(global-set-key (kbd "C-c a") 'embark-act)

(setq-default embark-prompter 'embark-completing-read-prompter)

(defun 2e-eye-break ()
  "A recursive function that calls itself every 20 minutes to remind you to take a break."
  (2e-emacs-remind "Take a 20 second break to protect your eyes." "Eye Doctor")
  (run-with-timer 1200 nil '2e-eye-break))

(setq inferior-lisp-program "sbcl")

(require 'emms)
(emms-minimalistic)

(define-emms-simple-player win-mpv '(file)
                           (regexp-opt '(".mp3" ".mp4" ".mkv" ".webm"))
                           "mpv")

(emms-minimalistic)
(setq emms-player-list '(emms-player-win-mpv)
      emms-info-functions '(emms-info-native))

(defun electric-pair-disable-certain-brackets ()                                                           ; Disables some "unwieldy" brackets so ligatures don't get messed up
  (setq-local electric-pair-inhibit-predicate                                                              ; Sets a predicate for inhibiting the adding of a bracket
              '(lambda (c)
                 (or (char-equal c ?<) (char-equal c ?=)))))                                                ; If the character is equal to < or =, inhibit it

  (2e/add-function-to-multiple-hooks 'electric-pair-disable-certain-brackets '(                               ; Adds function to multiple hooks
                                                                            prog-mode-hook                 ;    Adds to all programming modes
                                                                            org-mode-hook                  ;    Adds to Org Mode
                                                                            text-mode-hook                 ;    Adds to Text Mode
                                                                            ))

(require 'avy)
(setq avy-keys (string-to-list "wasdiop["))

(defhydra hydra-windows ()
  "window splitting and hopping"
  ("w" windmove-delete-up)
  ("s" windmove-delete-down)
  ("a" windmove-delete-left)
  ("d" windmove-delete-right)
  ("u" ace-window)
  ("i" delete-other-windows)
  ("o" delete-window)
  ("q" split-window-below)
  ("e" split-window-right)
  ("z" split-root-window-below)
  ("c" split-root-window-right)
  ("h" shrink-window-horizontally)
  ("l" enlarge-window-horizontally)
  ("j" shrink-window)
  ("k" enlarge-window))

(defhydra hydra-clipboard ()
  "the emacs infinite clipboard"
  ("i" kill-region)
  ("o" kill-ring-save)
  ("p" nil)
  ("d" yank)
  ("w" yank-from-kill-ring))

(require 'orderless)
(setq completion-styles '(orderless basic))
(setq completion-category-defaults nil)
(setq orderless-component-separator ";")

(require 'alert-toast)
(setq alert-default-style 'toast)

(require 'org-timer)

;;; Variable Definitions

(defvar progodoro-countdown nil
  "Stores the current mode of the progodoro. NIL means that the timer has been reset and that the baseline focus time hasn't been recorded yet. 1 means that either the baseline focus time is being recorded now, or has already been recorded. t means that the baseline focus time has already been raised.")

(defvar progodoro-focus "00:00:00 "
  "The amount of time the progodoro has gone up to as of now. It is stored as a string of format `HH:MM:SS `.")

(defvar progodoro-recharging-p nil
  "Whether the progodoro is recharging")

(defvar progodoro-pity 0
  "Every non-long break that a person gets will increase the pity by an integer between 0 and 5. Before every break, it will roll and if the integer between 0 and (100 - pity) is 0, then it will be a long break and pity will be reset.")

;;; Hooks
(add-hook 'org-timer-done-hook (lambda () (if progodoro-recharging-p
                                              (progn (2e-emacs-remind "Your timer has recharged. You can proceed to discharge the timer again." "Progodoro")
                                                     (setq progodoro-recharging-p nil))
                                            (2e-emacs-remind "Your timer has overloaded. Please recharge your timer." "Progodoro"))))

;;; Functions
(defun 2e/recharge-progodoro ()
  (interactive)
  (let* ((capped-p (>= progodoro-pity 95))
         (roll (random (- 100 (if capped-p 95 progodoro-pity))))
               (effort (floor (/ (funcall
                                  (lambda (self numbers add) (funcall self numbers add self))
                                  (lambda (numbers add self) (if (null numbers) 0 (+ (* add (car numbers)) (funcall self (cdr numbers) (/ add 60) self))))
                                  (mapcar #'string-to-number (split-string progodoro-focus ":"))
                                  3600) 50)))
               (pity-increase (random effort)))
         (if (or (= roll 0) (> progodoro-pity 150))
             (progn (setq progodoro-recharging-p t)
                    (org-timer-set-timer (+ 30 (random (if capped-p (+ 70 (- progodoro-pity 95)) 70))))
                    (setq progodoro-pity 0)
                    (message "You are given a long break!"))
           (progn (message (format "Due to your effort of %s, you are given an increase in pity of %s.\nYou rolled a %s." effort pity-increase roll))
                  (setq progodoro-recharging-p t)
                  (setq progodoro-pity (+ pity-increase progodoro-pity))
                  (org-timer-set-timer 5)))))

(defun 2e/discharge-progodoro ()
  (interactive)
  (cond ((not progodoro-countdown) (progn (org-timer-start)
                                          (setq progodoro-countdown 1)
                                          (message "Starting Forge.")))
        ((eq progodoro-countdown 1) (progn (setq progodoro-focus (org-timer-value-string))
                                           (org-timer-stop)
                                           (message "Progodoro Timer Forged.")
                                           (setq progodoro-countdown t)))
        (t (progn (let ((time-list (split-string progodoro-focus (rx ":"))))

                    (setq progodoro-focus (format "%s:%s:%s "
                                                  (string-to-number (car time-list))
                                                  (+ 5 (string-to-number (cadr time-list)))
                                                  (string-to-number (caddr time-list)))))
                  (org-timer-set-timer progodoro-focus)))))

(defun 2e/drain-progodoro ()
  (interactive)
  (org-timer-stop)
  (setq progodoro-recharging-p nil)
  (setq progodoro-countdown nil)
  (setq progodoro-focus "00:00:00 "))


  ;;; Keybindings
(global-set-key (kbd "<home>") '2e/discharge-progodoro)
(global-set-key (kbd "<end>") '2e/recharge-progodoro)
(global-set-key (kbd "<f12>") 'org-timer-pause-or-continue)

(require 'yasnippet)
(yas-global-mode 1)

(require 'flycheck)
(global-flycheck-mode)
(add-hook 'after-init-hook #'global-flycheck-mode)



(require 'org-roam)
(setq org-roam-directory "C:/Users/linyi/OneDrive/Documents/Wiki")
(org-roam-setup)
(global-set-key (kbd "C-c n l") 'org-roam-buffer-toggle)
(global-set-key (kbd "C-c n f") 'org-roam-node-find)
(global-set-key (kbd "C-c n i") 'org-roam-node-insert)
