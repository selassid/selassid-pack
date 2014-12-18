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

(setq eshell-directory-name "~/.eshell")
(setq eshell-cmpl-ignore-case t)

(setq eshell-banner-message "")
(require 'em-smart)
(setq eshell-where-to-jump 'begin)
(setq eshell-review-quick-commands nil)
(setq eshell-smart-space-goes-to-end t)

(defmacro ds-fg-color (str fg-color)
  `(propertize ,str 'face (list :foreground ,fg-color)))

(setq colorhash-1 "#ffa033")
(setq colorhash-2 "#33d6ff")
(setq colorhash-3 "#334eff")

(defvar ds-pwd-color colorhash-1)
(defvar ds-git-color colorhash-2)

(defun ds-pwd-prompt ()
  (ds-fg-color (abbreviate-file-name (eshell/pwd)) ds-pwd-color))
(defun ds-git-prompt ()
  (if (magit-get-top-dir)
      (concat "("
              (ds-fg-color (magit-get-current-branch) ds-git-color)
              (if (magit-anything-staged-p) (ds-fg-color "S" "green") "")
              (if (magit-anything-unstaged-p) (ds-fg-color "U" "red") "")
              ")")
    ""))
(defun ds-sent-prompt ()
  (if (= (user-uid) 0)
      (ds-fg-color " # " "red")
    " $ "))
(setq eshell-prompt-function (lambda nil
                               (concat (ds-pwd-prompt)
                                       (ds-git-prompt)
                                       (ds-sent-prompt))))

(defun insert-debug-statement ()
  (interactive)
  (insert "import ipdb; ipdb.set_trace();"))
