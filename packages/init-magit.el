;;; init-magit --- Initialize magit
;;; Commentary:
;;; Code:

(use-package magit
  :ensure t
  :demand
  :bind (("C-x g" . magit-status)
         ("C-x M-g" . magit-dispatch))
  :config
  (setq git-commit-summary-max-length 49))

(provide 'init-magit)
;;; init-magit.el ends here
