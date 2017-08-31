
(require-package 'eclim)
(require-package 'company-emacs-eclim)

(require 'eclim)
(setq eclimd-autostart t)

(defun my-java-mode-hook ()
    (eclim-mode t))

(add-hook 'java-mode-hook 'my-java-mode-hook)

;; paths at work
(custom-set-variables
  '(eclim-eclipse-dir "/opt/soft/eclipse")
  '(eclim-executable "/opt/soft/eclim/org.eclim/bin/eclim"))

(require 'company)
(require 'company-emacs-eclim)
(company-emacs-eclim-setup)
(global-company-mode t)

(provide 'init-eclim)
