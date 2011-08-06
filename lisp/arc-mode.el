;; HOOKS: `foo' means one of the supported archive types.
  (if archive-zip-use-pkzip '("pkzip" "-u" "-P") '("zip" "-q"))
  "Turn an integer like 0700 (i.e., 448) into a mode string like -rwx------."
  ;; FIXME: merge with tar-grind-file-mode.
  (string
    (if (zerop (logand  8192 mode))
	(if (zerop (logand 16384 mode)) ?- ?d)
      ?c) ; completeness
    (if (zerop (logand   256 mode)) ?- ?r)
    (if (zerop (logand   128 mode)) ?- ?w)
    (if (zerop (logand    64 mode))
	(if (zerop (logand  1024 mode)) ?- ?S)
      (if (zerop (logand  1024 mode)) ?x ?s))
    (if (zerop (logand    32 mode)) ?- ?r)
    (if (zerop (logand    16 mode)) ?- ?w)
    (if (zerop (logand     8 mode))
	(if (zerop (logand  2048 mode)) ?- ?S)
      (if (zerop (logand  2048 mode)) ?x ?s))
    (if (zerop (logand     4 mode)) ?- ?r)
    (if (zerop (logand     2 mode)) ?- ?w)
    (if (zerop (logand     1 mode)) ?- ?x)))
        (minute (logand (ash time -5) 63))
	     (typename (capitalize (symbol-name type))))
	;; Prevent loss of data when saving the file.
	(make-local-variable 'file-precious-flag)
	(setq file-precious-flag t)

  (define-key archive-mode-map "q" 'quit-window)
      '(menu-item "Alternate Display" archive-alternate-display
		  :enable (boundp (archive-name "alternate-display"))
		  :help "Toggle alternate file info display"))
      '(menu-item "View This File" archive-view
		  :help "Display file at cursor in View Mode"))
      '(menu-item "Display in Other Window" archive-display-other-window
		  :help "Display file at cursor in another window"))
      '(menu-item "Find in Other Window" archive-extract-other-window
		  :help "Edit file at cursor in another window"))
      '(menu-item "Find This File" archive-extract
		  :help "Extract file at cursor and edit it"))
      '(menu-item "Unmark All" archive-unmark-all-files
		  :help "Unmark all marked files"))
      '(menu-item "Flag" archive-flag-deleted
		  :help "Flag file at cursor for deletion"))
      '(menu-item "Unflag" archive-unflag
		  :help "Unmark file at cursor"))
      '(menu-item "Mark" archive-mark
		  :help "Mark file at cursor"))
      '(menu-item "Change Owner..." archive-chown-entry
		  :enable (fboundp (archive-name "chown-entry"))
		  :help "Change owner of marked files"))
      '(menu-item "Change Group..." archive-chgrp-entry
		  :enable (fboundp (archive-name "chgrp-entry"))
		  :help "Change group ownership of marked files"))
      '(menu-item "Change Mode..." archive-chmod-entry
		  :enable (fboundp (archive-name "chmod-entry"))
		  :help "Change mode (permissions) of marked files"))
      '(menu-item "Rename to..." archive-rename-entry
		  :enable (fboundp (archive-name "rename-entry"))
		  :help "Rename marked files"))
    ;;  '(menu-item "Copy to..." archive-copy))
      '(menu-item "Expunge Marked Files" archive-expunge
		  :help "Delete all flagged files from archive"))
	  (t (error "Buffer format not recognized")))))
	    (add-text-properties
	     (aref fil 1) (aref fil 2)
	     '(mouse-face highlight
	       help-echo "mouse-2: extract this file into a buffer")
	     text))
using `make-temp-file', and the generated name is returned."
	(make-temp-file
	  (if (and (fboundp 'msdos-long-file-names)
		   (not (msdos-long-file-names)))
		    (save-excursion
		      (funcall set-auto-coding-function
			       filename (- (point-max) (point-min)))))
(defun archive-mode-revert (&optional no-auto-save no-confirm)
        (setq maxlen (max maxlen width)
;; This line was a mistake; it is kept now for compatibility.
;; rms  15 Oct 98
(provide 'arc-mode)

;;; arc-mode.el ends here