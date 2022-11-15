; disable backup
; (setq backup-inhibited t)

; make backup to a designated dir, mirroring the full path
(defun xah-backup-nested-dir-file-path (Fpath)
  "Return a new file path and create dirs.
If the new path's directories does not exist, create them.
version 2022-06-09"
  (let* ($backupRoot $backupFilePath)
    (setq $backupRoot "~/.emacs.d/backup/")
    ;; remove Windows driver letter in path, e.g. C:
    (setq $backupFilePath
          (format "%s%s~" $backupRoot (replace-regexp-in-string "^[A-Za-z]:/" "" Fpath)))
    (make-directory
     (file-name-directory $backupFilePath)
     (file-name-directory $backupFilePath))
    $backupFilePath
    ))

(setq make-backup-file-name-function 'xah-backup-nested-dir-file-path)

; disable auto save
; (setq auto-save-default nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(tango-dark)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
