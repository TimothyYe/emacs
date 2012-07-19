;; ============= add load path ================
(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/weibo")

;; =============== Coding and Language ===============>
(set-selection-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-language-environment 'utf-8)
(setq locale-coding-system 'utf-8)
(setq current-language-environment "utf-8")
(setq locale-language-names
      (cons '("zh_CN.UTF-8" "UTF-8" utf-8) locale-language-names))

;; 一打开就起用 text 模式。  
(setq default-major-mode 'text-mode)

;; 语法高亮
(global-font-lock-mode t)

;;所有的 yes or no 全都用 y or n 代替 :-)
(fset 'yes-or-no-p 'y-or-n-p)

;; Use ALT + directions to switch buffer windows
(windmove-default-keybindings 'alt)

;; Turn on auto save function
(setq auto-save-default t)

;; 鼠标要挡住正在打的字时自动移开
(mouse-avoidance-mode 'animate)

;; 显示括号匹配 
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;; 显示时间，格式如下
(display-time-mode 1)  
(setq display-time-24hr-format t)  
(setq display-time-day-and-date t)

;; 支持emacs和外部程序的粘贴
(setq x-select-enable-clipboard t) 

;; 在标题栏提示你目前在什么位置
(setq frame-title-format "Timothy@%b")  

;; Initialize the start position of Emacs
(defun arrange-frame (w h x y)
  "Set the width, height, and x/y position of the current frame"
  (let ((frame (selected-frame)))
    (delete-other-windows)
    (set-frame-position frame x y)
    (set-frame-size frame w h)
  )
)

(arrange-frame 220 58 20 0)

;; 去掉工具栏
(tool-bar-mode)

;; 去掉滚动栏
(set-scroll-bar-mode nil)

;; 显示列号
(setq column-number-mode t)
(setq line-number-mode t)

;; 显示行号
(require 'linum)  
(setq linum-face 'my-display-line-number-face)  
(setq linum-format "%3d ")  
(add-hook 'find-file-hooks (lambda () (linum-mode 1)))  
;;(global-set-key [f6] 'linum-mode)  

;;让 Emacs 可以直接打开和显示图片。
(auto-image-file-mode)

;; 启用 ibuffer
(require 'ibuffer)
(global-set-key ( kbd "C-x C-b ")' ibuffer)

;; Enable weibo module
(require 'weibo)
