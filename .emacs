
;; Turn off the welcome screen frame
(setq inhibit-startup-message t)

;; Add Arduino syntax colouring
;;(add-to-list 'load-path "~/.emacs.d/")
;;(require 'arduino-mode)

;; Set Theme
;;(load-theme 'wombat t)

;; Make the Bell visible, instead of audible
(setq visible-bell nil)
(setq ring-bell-function (lambda ()
			   (invert-face 'mode-line)
			   (run-with-timer 0.1 nil 'invert-face 'mode-line)))

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("melpa" . "http://melpa.org/packages/")))
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("01ce486c3a7c8b37cf13f8c95ca4bb3c11413228b35676025fdf239e77019ea1" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(load-theme 'reykjavik)

;; Set the window size
(when window-system (set-frame-size (selected-frame) 80 33))

;; Turn on line numbers
(global-linum-mode t)

;; Highlight the current line
(global-hl-line-mode t)