;; Place your bindings here.

;; For example:
;;(define-key global-map (kbd "C-+") 'text-scale-increase)
;;(define-key global-map (kbd "C--") 'text-scale-decrease)

(define-key global-map (kbd "C-x C-d") (lambda () (interactive) (insert-debug-statement)))

(define-key global-map (kbd "C-c C-c") 'comment-region)
