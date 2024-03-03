(define-global-minor-mode event-horizon-global-mode event-horizon-mode
  (lambda ()
    (unless (minibufferp)
      (event-horizon-mode 1))
    (if event-horizon-mode
        (event-horizon--global-enable)
      (event-horizon--global-disable))))

(define-minor-mode event-horizon-mode
  "Event Horizon's minor mode.

This minor mode is used by `event-horizon-global-mode' and shouldn't actually be used."
  :init-value nil
  :interactive nil
  :global nil
  :keymap event-horizon-key-map
  (if event-horizon-mode
      (event-horizon--enable)
    (event-horizon--disable)))

(defvar event-horizon-insert-state-keymap
  (let ((keymap (make-keymap)))
    (define-key keymap [escape] 'event-horizon-insert-exit)))

(defun event-horizon-unfocus ()
  "utilizes treesit or a general parser to get to the container containing the current container. Works on: python (?)"
  )

(defun event-horizon-parent-container (node)
  "returns the parent container of the current container."
  (treesit-parent-until node ))

(defun event-horizon-container-at-point ()
  "returns the container at point."
  (treesit-node-at (point)))

;; Tinkering Code
;; (treesit-node-text (treesit-parent-until (treesit-node-at (point)) (lambda (x) t)))
