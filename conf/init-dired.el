(require-package 'dired+)
(setq diredp-hide-details-initially-flag nil)
(require 'dired+)

;; reuse buffer for folders
(diredp-toggle-find-file-reuse-dir 1)
(provide 'init-dired)
