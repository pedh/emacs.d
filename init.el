(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t))
(package-initialize)
(add-to-list 'load-path (expand-file-name "packages" user-emacs-directory))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (helm go-mode htmlize markdown-mode zenburn-theme anaconda-mode magit
	  flycheck use-package exec-path-from-shell company company-anaconda
	  helm-company expand-region which-key macrostep projectile yasnippet
	  yasnippet-snippets smartparens avy goto-chg geiser undo-tree anzu
	  aozora-view))))
(unless package-archive-contents
  (package-refresh-contents))
(package-install-selected-packages)
(require 'init-helm)
(require 'init-org)
(require 'init-company)
(require 'init-python)
(require 'init-scheme)
(require 'init-theme)
(require 'init-miscellany)

