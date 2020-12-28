;;; init-helm --- Initialize helm
;;; Commentary:
;;; Code:

(use-package helm
  :ensure t
  :demand t
  :bind (("M-x" . helm-M-x)
         ("C-x r b" . helm-filtered-bookmarks)
         ("C-x C-f" . helm-find-files))

  :config
  (require 'helm-config)
  (helm-mode 1))

(provide 'init-helm)
;;; init-helm.el ends here
