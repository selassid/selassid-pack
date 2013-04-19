;; Place your bindings here.

(define-key input-decode-map "\e[5c" [C-right])
(define-key input-decode-map "\e[5d" [C-left])

(define-key global-map [C-right] 'paredit-forward-slurp-sexp)
(define-key global-map [C-left] 'paredit-backward-slurp-sexp)

(define-key global-map (kbd "C-x C-d") 'insert-debug-statement)
(define-key global-map (kbd "C-c C-c") 'comment-region)
(define-key global-map (kbd "M-p") 'select-current-symbol)
