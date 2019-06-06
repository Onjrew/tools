
;; Turn off the welcome screen frame
(setq inhibit-startup-message t)

;; Turn off the toolbar
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; Make the Bell visible, instead of audible
(setq visible-bell nil)
(setq ring-bell-function (lambda ()
			   (invert-face 'mode-line)
			   (run-with-timer 0.1 nil 'invert-face 'mode-line)))


(package-initialize)
(setq package-archives '(("melpa" . "http://melpa.org/packages/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))


(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("45f7fec480eb3bdf364cbfcbc8d11ed0228bcf586ce7370fc30a6ce5770f181a" default)))
 '(package-selected-packages
   (quote
    (web-mode pyvenv-activate yaml-mode use-package reykjavik-theme py-autopep8 jedi elpy auto-highlight-symbol))))

(use-package reykjavik-theme)
(load-theme 'reykjavik)

(use-package pyvenv)
(pyvenv-activate "~/venv/py3")

(use-package py-autopep8)
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)
(setq py-autopep8-options '("--max-line-length=120"))

(use-package auto-complete)
(require 'auto-complete)
(global-auto-complete-mode t)

;; Set up jedi autocomplete
(use-package jedi)
(require 'jedi)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)
(setq jedi:setup-keys t)

;; Set the window size
(when window-system (set-frame-size (selected-frame) 154 72))

;; Turn on line numbers
(global-linum-mode t)


;; Highlight the current line
(global-hl-line-mode t)

;; Highlight matching parentheses
(show-paren-mode t)

;; Highlight symbol under the pointer
(use-package auto-highlight-symbol)
(require 'auto-highlight-symbol)
(global-auto-highlight-symbol-mode t)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(show-paren-match ((t (:background "alternateSelectedControlColor")))))

;; YAML Mode
(use-package yaml-mode)
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode))
(add-hook 'yaml-mode-hook
          '(lambda ()
             (define-key yaml-mode-map "\C-m" 'newline-and-indent)))

;; Set indent level to 2 spaces for JavaScript
(setq js-indent-level 2)

;; Spaces instead of tabs
(setq-default indent-tabs-mode nil)

;; Enable auto-revert-buffer
(global-auto-revert-mode 1)

;; Set auto-completion list to sort vertically
(setq completions-format 'vertical)

;; Same backup and auto-save files in system temp directory
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(add-to-list 'auto-mode-alist '("\\.json\\'" . json-mode))

(use-package web-mode)
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))

(setq web-mode-content-types-alist
  '(("hbs" . "\\.hbs\\'")))

;; Set web-mode indent to 2 spaces
(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
)
(add-hook 'web-mode-hook  'my-web-mode-hook)



