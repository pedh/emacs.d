;;; init-theme --- Initialize theme
;;; Commentary:
;;; Code:

(use-package zenburn-theme
  :ensure t
  :config
  (load-theme 'zenburn t))

(set-frame-font "monaco-14")

(provide 'init-theme)
;;; init-theme.el ends here
