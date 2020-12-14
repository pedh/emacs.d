;;; init-company --- Initialize company
;;; Commentary:
;;; Code:

(use-package company
  :ensure t
  :config
  (global-company-mode))

(use-package helm-company
  :ensure t
  :after (helm company)
  :bind (:map company-mode-map
         ("C-:" . helm-company)
         :map company-active-map
         ("C-:" . helm-company)))

(provide 'init-company)
;;; init-company.el ends here
