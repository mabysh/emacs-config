(require 'init-elpa)

(require-package 'evil)
(require-package 'evil-leader)
(require-package 'evil-surround)

(global-evil-leader-mode)
(global-evil-surround-mode)
(evil-mode 1)

;; ibuffer must run with evil keys 
(setq evil-emacs-state-modes (delq 'ibuffer-mode evil-emacs-state-modes))

;; these modes must run with emacs keys
(dolist (mode '(ag-mode
                flycheck-error-list-mode
                git-rebase-mode))
  (add-to-list 'evil-emacs-state-modes mode))

;; enable hljk for occur mode
(add-hook 'occur-mode-hook
          (lambda ()
            (evil-add-hjkl-bindings occur-mode-map 'emacs
              (kbd "/")       'evil-search-forward
              (kbd "n")       'evil-search-next
              (kbd "N")       'evil-search-previous
              (kbd "C-d")     'evil-scroll-down
              (kbd "C-u")     'evil-scroll-up
              (kbd "C-w C-w") 'other-window)))

(provide 'init-evil)
