;; Place your bindings here.

(define-key global-map (kbd "C-x C-d") 'insert-debug-statement)
(define-key global-map (kbd "C-c C-c") 'comment-or-uncomment-region)
(define-key global-map (kbd "M-Z") 'er/mark-symbol)
(define-key global-map (kbd "M-z") 'er/mark-word)

(define-key global-map (kbd "C-x C-l") 'mc/edit-lines)
(define-key global-map (kbd "C-M-s") 'mc/mark-next-like-this)
(define-key global-map (kbd "C-M-r") 'mc/mark-previous-like-this)
