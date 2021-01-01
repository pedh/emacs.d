;;; init-magit --- Initialize magit -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package magit
  :bind (("C-x g" . magit-status)
         ("C-x M-g" . magit-dispatch))
  :defer 2
  :config
  (setq git-commit-summary-max-length 49))

(provide 'init-magit)
;;; init-magit.el ends here
