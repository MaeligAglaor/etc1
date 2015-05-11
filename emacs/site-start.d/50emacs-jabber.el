;; -*-emacs-lisp-*-
;;
;; Emacs startup file for the Debian emacs-jabber package.

(if (file-exists-p "/usr/share/emacs/site-lisp/emacs-jabber")
    (progn
      (debian-pkg-add-load-path-item
       (concat "/usr/share/" (symbol-name flavor) "/site-lisp/emacs-jabber"))
      ;; Make sure that the uncompiled files are also in the load-path, near the
      ;; end.  This is for moving point to the code when view help.
      (setq load-path
            (append load-path '("/usr/share/emacs/site-lisp/emacs-jabber")))
      (load "jabber-autoloads"))  
  (message "Package emacs-jabber removed but not purged.  Skipping setup."))
