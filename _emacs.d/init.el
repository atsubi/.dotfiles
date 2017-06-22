;; Load-path

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(defun add-to-load-path (&rest paths)
  (mapc '(lambda (path)
	   (add-to-list 'load-path path))
	(mapcar 'expand-file-name paths)))

;; lisp directory's path
(add-to-load-path "~/.emacs.d/auto-complete")
(add-to-load-path "~/.emacs.d/elpa")


;; auto-complete
(require 'auto-complete)
(require 'auto-complete-config)    ; 必須ではないですが一応
(global-auto-complete-mode t)


;; line number configuration
(require 'linum)
(global-linum-mode t)
(setq linum-format "%5d ")

;; hl-line configuration
(global-hl-line-mode t)                   ;; 現在行をハイライト
(show-paren-mode t)                       ;; 対応する括弧をハイライト
(setq show-paren-style 'mixed)            ;; 括弧のハイライトの設定。
(transient-mark-mode t)                   ;; 選択範囲をハイライト


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(hl-line ((t (:background "color-236")))))

; (yes/no) -> (y/n)
(fset 'yes-or-no-p 'y-or-n-p)

;;; *.~いらない
(setq make-backup-files nil)

;;; .#*いらない
(setq auto-save-default nil)


;;; package
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (nlinum))))


;;; markdown
(autoload 'markdown-mode "~/.emacs.d/markdown-mode.el" "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
;;; markdown preview
;; browser
(setq markdown-command "~/.emacs.d/Markdown.pl")
