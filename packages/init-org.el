;;; init-org --- Initialize orgmode -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(setq org-confirm-babel-evaluate nil
      org-directory "~/org"
      org-mobile-directory
      "~/Library/Mobile Documents/iCloud~com~mobileorg~mobileorg/Documents")

(with-eval-after-load 'org
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((dot . t))))

(provide 'init-org)
;;; init-org.el ends here
