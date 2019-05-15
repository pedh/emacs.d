(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))
(exec-path-from-shell-initialize)
(require 'expand-region)
;;(global-set-key (kbd "C-@") 'er/expand-region)
(define-key emacs-lisp-mode-map (kbd "C-c e") 'macrostep-expand)
(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(yas-global-mode 1)
(require 'smartparens-config)
(smartparens-global-mode)
(which-key-mode)
(global-anzu-mode +1)
(global-set-key [remap query-replace] 'anzu-query-replace)
(global-set-key [remap query-replace-regexp] 'anzu-query-replace-regexp)
(global-undo-tree-mode)

(provide 'init-miscellany)
