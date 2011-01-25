(setq inhibit-splash-screen t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(set-default-font "-xos4-terminus-medium-r-normal--14-140-72-72-c-80-iso10646-1")
(add-to-list 'default-frame-alist '(font . "-xos4-terminus-medium-r-normal--14-140-72-72-c-80-iso10646-1"))
(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
(set-background-color "white")

(autoload 'markdown-mode "markdown-mode.el"
   "Major mode for editing Markdown files" t)
(setq auto-mode-alist
   (cons '("\\.md" . markdown-mode) auto-mode-alist))
