;; load-path
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
'(hl-line ((t (:background "color-236"))))
)



; (yes/no) -> (y/n)
(fset 'yes-or-no-p 'y-or-n-p)

;;; *.~いらない
(setq make-backup-files nil)

;;; .#*いらない
(setq auto-save-default nil)
