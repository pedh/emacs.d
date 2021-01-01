;;; init-company --- Initialize company -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package company
  :config
  (global-company-mode))

(use-package helm-company
  :after (helm company)
  :bind (:map company-mode-map
         ("C-:" . helm-company)
         :map company-active-map
         ("C-:" . helm-company)))

(provide 'init-company)
;;; init-company.el ends here
