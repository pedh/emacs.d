(require 'lsp-mode)
(add-hook 'python-mode-hook #'lsp)
(require 'company-lsp)
(push 'company-lsp company-backends)

(provide 'init-lsp)
