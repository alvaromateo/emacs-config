;; init file

;; Configuration from "Using Emacs" tutorials

(setq inhibit-startup-message t)

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

;; Bootstrap 'use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package try
	     :ensure t)
(use-package which-key
	     :ensure t
	     :config
	     (which-key-mode))

(use-package org-bullets
	     :ensure t
	     :config
	     (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))


;; My own configuration

(setq apropos-sort-by-scores t)

(ido-mode 1)
(setq ido-everywhere t)
(setq ido-enable-flex-matching t)

(global-set-key [remap dabbrev-expand] 'hippie-expand)

(require 'dired-x)

;; Rebinding of the windmove functions to AWSD
(global-set-key (kbd "C-S-j") 'windmove-left)
(global-set-key (kbd "C-S-i") 'windmove-up)
(global-set-key (kbd "C-S-k") 'windmove-down)
(global-set-key (kbd "C-S-l") 'windmove-right)

;; Make the saved files go to a different place than current folder
(setq backup-directory-alist `(("." . "~/.emacsSaves")))

(menu-bar-mode -1) ;; Disable menu bar (file, edit, etc.)
(tool-bar-mode -1) ;; Disable tool bar (icons to open file, new file, etc.)

(global-linum-mode t) ;; Set line numbers to the left of emacs window

;; Make emacs start maximized
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

;; Style commands
(require 'doom-themes)
;; Global settings (defaults)
(setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
      doom-themes-enable-italic t) ; if nil, italics is universally disabled
;; Load the theme (doom-one, doom-molokai, etc)
(load-theme 'doom-one t)
;; Enable flashing mode-line on errors
(doom-themes-visual-bell-config)
;; Enable custom neotree theme
(doom-themes-neotree-config)  ; all-the-icons fonts must be installed!


;; Automatically added lines

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (doom-themes org-bullets which-key try use-package solarized-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

