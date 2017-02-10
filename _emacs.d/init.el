;; load-path
(defun add-to-load-path (&rest paths)
  (mapc '(lambda (path)
	   (add-to-list 'load-path path))
	(mapcar 'expand-file-name paths)))

;; lisp directory's path
(add-to-load-path "~/.emacs.d/auto-complete")



;; auto-complete
(require 'auto-complete)
(require 'auto-complete-config)    ; 必須ではないですが一応
(global-auto-complete-mode t)

;; hl-line
(global-hl-line-mode t)                   ;; 現在行をハイライト
(show-paren-mode t)                       ;; 対応する括弧をハイライト

(custom-set-faces
'(hl-line ((t (:background "color-236"))))
)



; (yes/no) -> (y/n)
(fset 'yes-or-no-p 'y-or-n-p)

;;; *.~いらない
(setq make-backup-files nil)

;;; .#*いらない
(setq auto-save-default nil)
