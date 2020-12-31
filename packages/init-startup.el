;;; init-startup --- Initialize startup -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(setq gc-cons-threshold 100000000)
(setq read-process-output-max (* 1024 1024)) ;; 1mb

(add-hook 'after-init-hook
          (lambda ()
            (require 'server)
            (unless (server-running-p)
              (server-start))))

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(custom-set-variables
 '(inhibit-startup-screen t)
 '(package-selected-packages
   '(use-package)))

(unless package-archive-contents
  (package-refresh-contents))
(package-install-selected-packages)

(eval-when-compile
  (require 'use-package))

(use-package esup
  :ensure t
  :pin melpa
  :commands (esup))

(provide 'init-startup)
;;; init-startup.el ends here
