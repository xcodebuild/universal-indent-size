## universal-indent-size

Set all indent size in emacs at once.

## Install on spacemacs

```emacs-lisp
(universal-indent-size :location (recipe)
                                 :fetcher github
                                  :repo "codefalling/universal-indent-size")
```

```emacs-lisp
(use-package universal-indent-size
   :defer t
   :commands universal-indent-size-set
   :init
   (universal-indent-size-set 2))
```

## Usage

```emacs-lisp
;; use space instead of tab
(setq indent-tabs-mode nil)
;; set all indent size to 4
(universal-indent-size-set 4)
```

