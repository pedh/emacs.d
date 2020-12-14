;;; init-scheme --- Initialize scheme
;;; Commentary:
;;; Code:

(use-package geiser
  :ensure t
  :config
  (setq geiser-active-implementations '(mit)))

(provide 'init-scheme)
;;; init-scheme.el ends here
