;; Place your bindings here.

(define-key input-decode-map "\e[5c" [C-right])
(define-key input-decode-map "\e[5d" [C-left])

(define-key global-map [C-right] 'paredit-forward-slurp-sexp)
(define-key global-map [C-left] 'paredit-backward-slurp-sexp)
