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

;; bootstrap for straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))
(straight-use-package 'use-package)
(setq package-enable-at-startup nil)
(setq straight-use-package-by-default t)

(setq use-package-verbose t)
(setq use-package-always-ensure t)
(setq inhibit-startup-screen t)

(use-package diminish)

(use-package esup
  :commands (esup))

(provide 'init-startup)
;;; init-startup.el ends here
