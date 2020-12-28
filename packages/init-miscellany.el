;;; init-miscellany --- Initialize miscellany
;;; Commentary:
;;; Code:

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

(use-package exec-path-from-shell
  :ensure t
  :config
  (exec-path-from-shell-initialize))

(use-package expand-region
  :ensure t
  :bind ("C-=" . er/expand-region))

(use-package macrostep
  :ensure t
  :bind (:map emacs-lisp-mode-map
         ("C-c e" . macrostep-expand)))

(use-package projectile
  :ensure t
  :bind-keymap ("s-p" . projectile-command-map)
  :bind-keymap ("C-c p" . projectile-command-map)
  :config
  (projectile-mode +1))

(use-package yasnippet
  :ensure t
  :hook (prog-mode . yas-minor-mode)
  :hook (org-mode . yas-minor-mode))

(use-package yasnippet-snippets
  :ensure t
  :after (yasnippet))

(use-package smartparens
  :ensure t
  :config
  (require 'smartparens-config)
  (smartparens-global-mode))

(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(use-package anzu
  :ensure t
  :bind (([remap query-replace] . anzu-query-replace)
         ([remap query-replace-regexp] . anzu-query-replace-regexp))
  :config
  (global-anzu-mode +1))

(use-package undo-tree
  :ensure t
  :config
  (global-undo-tree-mode))

(use-package rainbow-delimiters
  :ensure t
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package whitespace
  :hook ((prog-mode org-mode). whitespace-mode)
  :config
  (setq whitespace-style '(face empty tabs lines-tail trailing)))

(use-package neotree
  :ensure t
  :bind (([f8] . neotree-toggle)))

(use-package recentf
  :config
  (recentf-mode 1)
  (setq recentf-max-menu-items 25)
  (setq recentf-max-saved-items 25)
  (run-at-time nil (* 5 60) 'recentf-save-list))

(use-package graphviz-dot-mode
  :ensure t
  :config
  (setq graphviz-dot-indent-width 4))

(use-package company-graphviz-dot)

(use-package goto-chg
  :ensure t
  :bind (("C-." . goto-last-change)
         ("C-," . goto-last-change-reverse)))

(use-package htmlize
  :ensure t)

(use-package markdown-mode
  :ensure t)

(use-package yaml-mode
  :ensure t)

(use-package avy
  :ensure t
  :bind (("C-;" . avy-goto-char-timer)))

(use-package aozora-view
  :ensure t)

(use-package ggtags
  :ensure t
  :hook (c-mode-common . ggtags-mode))

(setq default-directory "~/")

(provide 'init-miscellany)
;;; init-miscellany.el ends here
