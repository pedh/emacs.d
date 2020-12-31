;;; init --- Initialize -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(add-to-list 'load-path (expand-file-name "packages" user-emacs-directory))

(require 'init-startup)
(require 'init-theme)
(require 'init-helm)
(require 'init-org)
(require 'init-company)
(require 'init-scheme)
(require 'init-go)
(require 'init-lsp)
(require 'init-magit)
(require 'init-miscellany)

(provide 'init)
;;; init.el ends here
