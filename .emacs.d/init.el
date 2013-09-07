;; Set default font
(set-face-attribute 'default nil :font "Monaco-14")

;; Load plugins
(add-to-list 'load-path "~/.emacs.d/plugins") 

;; Load themes
(require 'color-theme)
(color-theme-initialize)
(color-theme-tomorrow-night)

;; Set no line wrap
(setq-default truncate-lines 1)

;; Remove toolbar
(tool-bar-mode -1)

;; Setup Rails mode
;(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins/emacs-rails"))
;(require 'rails)

;; Setup Rhtml mode
;(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins/rhtml"))
;(require 'rhtml-mode)
