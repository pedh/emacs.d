;;; init-lsp --- Initialize lsp
;;; Commentary:
;;; Code:

(use-package lsp-mode
  :ensure t
  :hook ((python-mode . lsp)
         (go-mode . lsp))
  :config
  (setq lsp-completion-provider :capf)
  (setq lsp-idle-delay 0.500))

(use-package lsp-ui
  :ensure t
  :defer t)

(provide 'init-lsp)
;;; init-lsp.el ends here
