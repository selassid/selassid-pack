(defvar autosave-dir "~/.live-packs/.auto-save-files/")
(defvar backup-dir "~/.live-packs/.backup-files/")

(setq-default tab-width 4)
(setq-default vc-follow-symlinks t)
(setq-default show-trailing-whitespace t)
(setq-default whitespace-style
              '(face trailing tabs lines space-mark tab-mark))
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
