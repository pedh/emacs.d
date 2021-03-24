;;; init-theme --- Initialize theme -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package zenburn-theme
  :config
  (load-theme 'zenburn t))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package whitespace
  :diminish whitespace-mode
  :hook ((prog-mode org-mode) . whitespace-mode)
  :hook ((go-mode c-mode-common)
         . (lambda () (whitespace-mode 0) (setq indent-tabs-mode t)))
  :config
  (setq whitespace-style '(face empty tabs lines-tail trailing)))

(use-package smooth-scrolling
  :config
  (smooth-scrolling-mode 1))

(setq default-frame-alist '((font . "monaco-14")))
;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time

(setq-default fill-column 80)
(set-face-foreground 'fill-column-indicator "#2B2B2B")
(global-display-fill-column-indicator-mode)

(provide 'init-theme)
;;; init-theme.el ends here
