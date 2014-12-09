(require 'package)
(push '("marmalade" . "http://marmalade-repo.org/packages/") package-archives)

(add-to-list 'load-path "~/.emacs.d/elpa/evil-1.0.8")

(require 'evil)
(evil-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(haskell-mode-hook (quote (turn-on-haskell-indent))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;; Initialize MELPA
;;(require 'package)
;;(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
;;(unless package-archive-contents (package-refresh-contents))
;;(package-initialize)

;;; Install fsharp-mode
;;(unless (package-installed-p 'fsharp-mode)
    ;;(package-install 'fsharp-mode))

;;(require 'fsharp-mode)

(linum-mode 1)
