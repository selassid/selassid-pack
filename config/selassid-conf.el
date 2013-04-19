(defvar autosave-dir "~/.live-packs/.auto-save-files/")
(defvar backup-dir "~/.live-packs/.backup-files/")

(setq-default tab-width 4)
(setq-default vc-follow-symlinks t)
(setq-default show-trailing-whitespace t)
(global-hl-line-mode t)

(require 'package)
(add-to-list 'package-archives
             '("marmalade" .
               "http://marmalade-repo.org/packages/"))
(package-initialize)

(defun insert-debug-statement ()
  (interactive)
  (insert "import ipdb; ipdb.set_trace();"))

(setq auto-mode-alist
      (append
       '(("COMMIT_EDITMSG$" . change-log-mode))
       auto-mode-alist))

(defun select-current-symbol ()
  (interactive)
  (let (pt)
    (skip-chars-backward "-_A-Za-z0-9")
    (setq pt (point))
    (skip-chars-forward "-_A-Za-z0-9")
    (set-mark pt)))
