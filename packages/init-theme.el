;;; init-theme --- Initialize theme -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package zenburn-theme
  :config
  (load-theme 'zenburn t))

(use-package smooth-scrolling
  :config
  (smooth-scrolling-mode 1))

(setq default-frame-alist '((font . "monaco-14")))
;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time

(provide 'init-theme)
;;; init-theme.el ends here
