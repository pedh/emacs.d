;;; init-org --- Initialize orgmode -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package org
  :defer t
  :ensure org-contrib
  :config
  (custom-set-variables
   '(org-confirm-babel-evaluate nil)
   '(org-directory "~/org")
   '(org-babel-latex-preamble
     (lambda (_)
       "\\documentclass[preview]{standalone}")))
  (setq org-mobile-directory
        "~/Library/Mobile Documents/iCloud~com~mobileorg~mobileorg/Documents")
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((dot . t)
     (scheme . t)
     (lisp . t)
     (emacs-lisp . t)
     (python . t)
     (R . t)
     (latex . t))))

(provide 'init-org)
;;; init-org.el ends here
