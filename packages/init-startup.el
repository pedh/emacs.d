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

(setq package-archives
      '(("gnu" . "https://elpa.gnu.org/packages/")
        ("melpa" . "https://melpa.org/packages/")
        ("melpa-stable" . "https://stable.melpa.org/packages/")
        ("org" . "https://orgmode.org/elpa/")))

(require 'package)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
;;(package-initialize)
(eval-when-compile
  (require 'use-package))
(require 'bind-key)
(setq use-package-verbose t)
(setq use-package-always-ensure t)
(setq package-enable-at-startup t)
(setq inhibit-startup-screen t)

(use-package esup
  :pin melpa
  :commands (esup))

(provide 'init-startup)
;;; init-startup.el ends here
