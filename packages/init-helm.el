;;; init-helm --- Initialize helm -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package helm
  :bind (("M-x" . helm-M-x)
         ("C-x r b" . helm-filtered-bookmarks)
         ("C-x C-f" . helm-find-files))
  :bind-keymap ("C-x c" . helm-command-prefix)
  :defer 2
  :config
  (require 'helm-config)
  (helm-mode 1))

(use-package helm-projectile
  :defer t
  :hook (projectile-mode . helm-projectile-on))

(use-package helm-ag
  :defer t)

(use-package helm-swoop
  :bind (("M-i" . helm-swoop)
         ("M-I" . helm-swoop-back-to-last-point)
         ("C-c M-i" . helm-multi-swoop)
         ("C-x M-i" . helm-multi-swoop-all)))

(use-package helm-descbinds
  :after (helm)
  :config
  (helm-descbinds-mode))


(provide 'init-helm)
;;; init-helm.el ends here
