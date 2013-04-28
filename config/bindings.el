;; Place your bindings here.

(define-key global-map (kbd "C-x C-d") 'insert-debug-statement)
(define-key global-map (kbd "C-c C-c") 'comment-or-uncomment-region)
(define-key global-map (kbd "M-W") 'er/mark-symbol)
(define-key global-map (kbd "M-w") 'er/mark-word)

(define-key global-map (kbd "M-g") 'mc/edit-lines)
(define-key global-map (kbd "C-M-s") 'mc/mark-next-like-this)
(define-key global-map (kbd "C-M-r") 'mc/mark-previous-like-this)
