(require 'lsp-mode)
(add-hook 'python-mode-hook #'lsp)
(add-hook 'go-mode-hook #'lsp)

(provide 'init-lsp)
