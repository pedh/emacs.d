;;; init-scheme --- Initialize scheme -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package geiser
  :defer t
  :config
  (setq geiser-active-implementations '(mit)))

(provide 'init-scheme)
;;; init-scheme.el ends here
