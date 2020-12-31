;;; init-helm --- Initialize helm -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package helm
  :ensure t
  :bind (("M-x" . helm-M-x)
         ("C-x r b" . helm-filtered-bookmarks)
         ("C-x C-f" . helm-find-files))
  :bind-keymap ("C-x c" . helm-command-prefix)
  :defer 2
  :config
  (require 'helm-config)
  (helm-mode 1))

(use-package helm-projectile
  :ensure t
  :hook (projectile-mode . helm-projectile-on))

(use-package helm-ag
  :ensure t
  :defer)

(use-package helm-swoop
  :bind (("M-i" . helm-swoop)
         ("M-I" . helm-swoop-back-to-last-point)
         ("C-c M-i" . helm-multi-swoop)
         ("C-x M-i" . helm-multi-swoop-all))
  :ensure t)


(provide 'init-helm)
;;; init-helm.el ends here
