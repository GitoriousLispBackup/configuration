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

(global-set-key [f5] 'refresh-file)
