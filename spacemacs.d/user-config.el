;; [[file:spacemacs.org::*Adding to user-config][Adding to user-config:1]]

;; Adding to user-config:1 ends here

;; [[file:spacemacs.org::*Finding this file][Finding this file:1]]
(defun spacemacs/find-config-file ()
  (interactive)
  (find-file (concat dotspacemacs-directory "/spacemacs.org")))

(delete* '("\\`SPC f e c\\'") which-key-replacement-alist :test #'equal :key #'car)
(spacemacs|spacebind 
 :global 
 (("f" "Files" 
   ("e" "Emacs/Spacemacs" 
    ("c" spacemacs/find-config-file "Open Spacemacs config")
    ("C" spacemacs/recompile-elpa "Recompile packages")
    ))))
;; Finding this file:1 ends here

;; [[file:spacemacs.org::*Auto-indent tangled files.][Auto-indent tangled files.:1]]
(defun spacemacs/tangle-cleanup()
  (progn
    (indent-region (point-min) (point-max))
    (save-buffer))
  )
(add-hook 'org-babel-post-tangle-hook 'spacemacs/tangle-cleanup())
;; Auto-indent tangled files.:1 ends here
