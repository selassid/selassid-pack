(defvar autosave-dir "~/.live-packs/.auto-save-files/")
(defvar backup-dir "~/.live-packs/.backup-files/")

(setq live-disable-zone t)

(setq-default tab-width 4)
(setq-default vc-follow-symlinks t)
(setq-default show-trailing-whitespace t)
(add-hook
 'term-mode-hook
 (lambda ()
   (setq show-trailing-whitespace nil)
   (setq yas-dont-activate t)))
(add-hook
 'eshell-mode-hook
 (lambda ()
   (setq show-trailing-whitespace nil)))

(setq-default whitespace-style
              '(face trailing tabs lines space-mark tab-mark))
(global-hl-line-mode t)

(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)


(defun insert-debug-statement ()
  (interactive)
  (insert "import ipdb; ipdb.set_trace();"))
