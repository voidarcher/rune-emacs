;;; init.el --- Init File for Rune Emacs -*- lexical-binding: t; -*- 
;; 
;; Rune Emacs Configuration File!
;; Written by Bisshoy Anwar
;; 18 May 2025

;; GENERAL CONFIGURATIONS ------------------------------------------------------

;; FULLSCREEN WINDOW ON STARTUP
(add-hook 'window-setup-hook 'toggle-frame-maximized t)

;; SIMPLE WINDOW ATTRIBUTES
(scroll-bar-mode -1)                        ; Hide scroll bar
(tool-bar-mode -1)                          ; Hide tool bar
(tooltip-mode -1)                           ; Hide tooltips
(set-fringe-mode 10)                        ; Increase...fringe...idk
(global-display-line-numbers-mode 1)        ; Display line numbers 
(setq display-line-numbers-type 'relative)  ; Relative line numbers

;; SET FONT 
(set-face-attribute 'default nil
		    :font "Monospace"
		    :height 130)

;; ELECTRIC PAIR MODE
(electric-pair-mode 1)

;; MAKE <ESC> QUIT PROMPTS
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; SET THEME TO DRACULA BY DEFAULT
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'dracula t)

;; BTERM COMMAND OPENS TERMINAL IN LOWER THIRD OF SCREEN
;; COMMAND SEQUENCE = :bterm<ENTER>
(defun bterm()
  "Split window horizontally 2:1, then open a terminal at bottom."
  (interactive)
  (let ((term-buffer-height (/ (frame-height) 3)))
    (split-window-vertically (- term-buffer-height))
    (other-window 1)
    (term "/bin/bash")))

;; CODING CONFIGURATIONS -------------------------------------------------------

;; SET PYTHON TAB WIDTH TO 4
(defun my/setup-python-indent ()
  (setq-local tab-width 4)
  (setq-local python-indent-offset 4))
(add-hook 'python-mode-hook #'my/setup-python-indent)

;; SET C/C++ TAB WIDTH TO 8
(defun my/setup-c-indent ()
  (setq-local tab-width 8)
  (setq-local c-basic-offset 8))
(add-hook 'c-mode-hook #'my/setup-c-indent)
(add-hook 'c++-mode-hook #'my/setup-c-indent)

;; PACKAGE CONFIGURATIONS ------------------------------------------------------

;; SEND CUSTOM-SET-VARIABLES TO ~/.emacs.d/custom.el file by default
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;; INITIALIZE PACKAGE SOURCES
(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; EEEEEEEEVILEVILEVILEVILEVIL
(use-package evil
  :ensure t
  :init
  :config
  (evil-mode 1))
