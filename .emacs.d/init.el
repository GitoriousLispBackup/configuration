(add-hook 'c++-mode-hook
          '(lambda ()
            (c-set-style "stroustrup")
	    (setq c-basic-offset 2)))

(setq inferior-lisp-program "/usr/bin/clisp")
(setq slime-net-coding-system 'utf-8-unix)
(slime-setup '(slime-scratch slime-fancy slime-asdf slime-references)) 
(setq slime-lisp-implementations '((clisp ("clisp"))
				   (sbcl ("sbcl"))
				   (clozurecl ("ccl"))
				   (ecl ("ecl") :coding-system iso-8859-1-unix)))

(defun refresh-file ()
    (interactive)
      (revert-buffer t t t)
        )

(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key [f5] 'refresh-file)
(global-set-key [f6] 'call-last-kbd-macro)
(global-set-key "\C-x'" 'next-error)
(global-set-key "\C-x\\" 'previous-error)
