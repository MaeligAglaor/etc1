;; -*-emacs-lisp-*-
;;
;; Emacs startup file for the Debian GNU/Linux pymacs package
;;
;; Originally contributed by Nils Naumann <naumann@unileoben.ac.at>
;; Modified by Dirk Eddelbuettel <edd@debian.org>
;; Adapted for dh-make by Jim Van Zandt <jrv@vanzandt.mv.com>

;; The pymacs follows the Debian/GNU Linux 'emacsen' policy and
;; byte-compiles its elisp files for each 'emacs flavor' (emacs19,
;; xemacs19, emacs20, xemacs20...).  The compiled code is then
;; installed in a subdirectory of the respective site-lisp directory.
;; We have to add this to the load-path:

(let ((package-dir (concat "/usr/share/"
                           (symbol-name flavor)
                           "/site-lisp/emms")))
  (when (file-directory-p package-dir)
    (debian-pkg-add-load-path-item package-dir)
    (autoload 'pymacs-load "pymacs" nil t) 
    (autoload 'pymacs-eval "pymacs" nil t) 
    (autoload 'pymacs-apply "pymacs")))
