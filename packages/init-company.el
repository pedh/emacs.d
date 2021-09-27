;;; init-company --- Initialize company -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package company
  :diminish company-mode
  :config
  (global-company-mode))

(use-package helm-company
  :after (helm company)
  :bind (:map company-mode-map
         ("C-:" . helm-company)
         :map company-active-map
         ("C-:" . helm-company)))

(use-package company-quickhelp
  :after (company)
  :config
  (company-quickhelp-mode))

(provide 'init-company)
;;; init-company.el ends here
