;; active Org-babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '(;; other Babel languages
   (dot . t)))

(setq org-confirm-babel-evaluate nil)

(provide 'init-org)
