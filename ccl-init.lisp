(require 'asdf)
(push "/home/sopindm/lisp/systems/" asdf:*central-registry*)
(push "/usr/share/common-lisp/systems/" asdf:*central-registry*)
(setq *default-socket-character-encoding* ':utf-8)
(setq *default-file-character-encoding* ':utf-8)