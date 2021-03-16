;;; init-miscellany --- Initialize miscellany -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package flycheck
  :config (global-flycheck-mode))

(use-package exec-path-from-shell
  :if (eq system-type 'darwin)
  :config
  (exec-path-from-shell-initialize))

(when (eq system-type 'darwin)
  (if-let (gls (executable-find "gls"))
      (setq insert-directory-program gls)))

(setq python-shell-interpreter "python3")

(setq auth-source-save-behavior nil)

(use-package expand-region
  :bind ("C-=" . er/expand-region))

(use-package macrostep
  :bind (:map emacs-lisp-mode-map
         ("C-c e" . macrostep-expand)))

(use-package projectile
  :bind-keymap ("s-p" . projectile-command-map)
  :bind-keymap ("C-c p" . projectile-command-map)
  :config
  (projectile-mode +1))

(use-package yasnippet
  :hook (prog-mode . yas-minor-mode)
  :hook (org-mode . yas-minor-mode))

(use-package yasnippet-snippets
  :after (yasnippet))

(use-package smartparens
  :config
  (require 'smartparens-config)
  (smartparens-global-mode))

(use-package which-key
  :config
  (which-key-mode))

(use-package anzu
  :bind (([remap query-replace] . anzu-query-replace)
         ([remap query-replace-regexp] . anzu-query-replace-regexp))
  :config
  (global-anzu-mode +1))

(use-package undo-tree
  :config
  (global-undo-tree-mode))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(setq-default indent-tabs-mode nil)

(use-package whitespace
  :hook ((prog-mode org-mode) . whitespace-mode)
  :hook ((go-mode c-mode-common)
         . (lambda () (whitespace-mode 0) (setq indent-tabs-mode t)))
  :config
  (setq whitespace-style '(face empty tabs lines-tail trailing)))

(use-package neotree
  :bind (([f8] . neotree-toggle)))

(use-package recentf
  :config
  (recentf-mode 1)
  (setq recentf-max-menu-items 25)
  (setq recentf-max-saved-items 25)
  (run-at-time nil (* 5 60) 'recentf-save-list))

(use-package graphviz-dot-mode
  :config
  (setq graphviz-dot-indent-width 4)
  (require 'company-graphviz-dot))

(use-package goto-chg
  :bind (("C-." . goto-last-change)
         ("C-," . goto-last-change-reverse)))

(use-package htmlize
  :defer t)

(use-package markdown-mode
  :defer t)

(use-package yaml-mode
  :defer t)

(use-package avy
  :bind (("C-;" . avy-goto-char-timer)))

(use-package aozora-view
  :defer t)

(use-package ggtags
  :hook (c-mode-common . ggtags-mode))

(use-package auto-package-update
  :config
  (setq auto-package-update-delete-old-versions t)
  (setq auto-package-update-hide-results t)
  (auto-package-update-maybe))

(setq default-directory "~/")

(provide 'init-miscellany)
;;; init-miscellany.el ends here
