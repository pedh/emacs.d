;; active Org-babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '(;; other Babel languages
   (dot . t)))

(setq org-confirm-babel-evaluate nil)
(setq org-directory "~/org")
(setq org-mobile-directory
      "~/Library/Mobile Documents/iCloud~com~mobileorg~mobileorg/Documents")

(provide 'init-org)
