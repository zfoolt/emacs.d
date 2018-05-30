(setq user-full-name "Zhang Tao")
(setq user-mail-address "zfoolt@163.com")

;; no backup
(setq make-backup-files nil)
(setq auto-save-default nil)
;; no startup logo and message
(setq inhibit-startup-echo-area-message t)
(setq inhibit-startup-message t)

(setq inhibit-splash-cressn t
      initial-scratch-message nil
      initial-major-mode 'org-mode)

(show-paren-mode t)
(setq column-number-mode t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)


(add-to-list 'load-path "~/.emacs.d/site-lisp")
(add-to-list 'load-path "~/.emacs.d/evil")


;; packege
(require 'evil)
(evil-mode t)

(require 'key-chord)
;; (setq key-chord-two-keys-delay 0.5)
(key-chord-define evil-normal-state-map ",," 'evil-force-normal-state)
(key-chord-define evil-visual-state-map ",," 'evil-change-to-previous-state)
(key-chord-define evil-insert-state-map ",," 'evil-normal-state)
(key-chord-define evil-replace-state-map ",," 'evil-normal-state)
(key-chord-mode t)

(require 'highlight-chars)
(add-hook 'font-lock-mode-hook 'hc-highlight-tabs)

(electric-pair-mode t)
(require 'ido)
(ido-mode t)

;; markdown
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))
