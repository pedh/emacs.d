(require 'lsp-mode)
(add-hook 'python-mode-hook #'lsp)
(add-hook 'go-mode-hook #'lsp)
(require 'company-lsp)
(push 'company-lsp company-backends)

(provide 'init-lsp)
