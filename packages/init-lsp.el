;;; init-lsp --- Initialize lsp -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package lsp-mode
  :hook ((python-mode . lsp)
         (go-mode . lsp))
  :defer t
  :config
  (setq lsp-completion-provider :capf)
  (setq lsp-idle-delay 0.500))

(use-package lsp-ui
  :defer t)

(provide 'init-lsp)
;;; init-lsp.el ends here
