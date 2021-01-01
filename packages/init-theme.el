;;; init-theme --- Initialize theme -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package zenburn-theme
  :config
  (load-theme 'zenburn t))

(setq default-frame-alist '((font . "monaco-14")))

(provide 'init-theme)
;;; init-theme.el ends here
