;;; init-scheme --- Initialize scheme -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package geiser
  :defer t
  :config
  (custom-set-variables
   '(geiser-active-implementations '(mit))))

(provide 'init-scheme)
;;; init-scheme.el ends here
