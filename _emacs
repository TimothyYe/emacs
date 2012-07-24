(setenv "HOME" "D:/Tools/emacs-23.4")
(setenv "PATH" "D:/Tools/emacs-23.4")

(add-to-list 'load-path "d:/Tools/emacs-23.4/site-lisp/weibo")
(add-to-list 'load-path "d:/Tools/emacs-23.4/site-lisp/color-theme")

;;set the default file path
(setq default-directory "~/")

;;C# hight light support
;;File: csharp-mode.el
(autoload 'csharp-mode "csharp-mode" "Major mode for editing C# code." t)
(setq auto-mode-alist
(append '(("\\.cs$" . csharp-mode)) auto-mode-alist))

;; Display your current position on title bar
(setq frame-title-format "Timothy@%b") 

;; Instead yes and no with y/n
(fset 'yes-or-no-p 'y-or-n-p)  

;; Display line number
(require 'linum)
(setq linum-format "%3d ")
(add-hook 'find-file-hooks (lambda () (linum-mode 1)))

;; Display colum number
(setq column-number-mode t)

;; Remove tool bar
(tool-bar-mode nil)

;; Remove scroll bar
(scroll-bar-mode nil)

;; Display current time
(display-time-mode 1)  
(setq display-time-24hr-format t)  
(setq display-time-day-and-date t)

;;括号匹配时显示另外一边的括号，而不是烦人的跳到另一个括号。
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;;光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线。
(mouse-avoidance-mode 'animate)

;; Let Emacs display pictures
(auto-image-file-mode)

;; Auto new line for 80 columns
;;(setq default-fill-column 80) 

;; Return & indent
(global-set-key "\C-m" 'newline-and-indent)
(global-set-key (kbd "C-<return>") 'newline)

;; Enable ibuffer module
;; File: ibuffer.el
(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Enable weibo module
;; weibo.el and other files
(require 'weibo)

;; Enable color-theme-ahei
;; File: color-theme-ahei.el
(require 'color-theme-ahei)

;; Set TAB length = 4
(setq default-tab-width 4)
(setq-default indent-tabs-mode nil)

;; Auto reload editing file
(global-auto-revert-mode)