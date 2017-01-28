;;; universal-indent-size.el --- Set all indent size at once. -*- lexical-binding: t; -*-

;; Copyright (C) 2016 codefalling, Adam Niederer

;; Author: codefalling <code.falling@gmail.com>
;; Keywords: indent

;; Version: 0.1
;; Package-Requires: ((mmm-mode "0.5.4"))

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;

;;; Code:

(defgroup universal-indent-size nil
  "Group for universal-indent-size"
  :prefix "universal-indent-size-"
  :group 'languages
  :link '(url-link :tag "Github" "https://github.com/CodeFalling/universal-indent-size"))

(defconst universal-indent-size-var-list
  ;; For contributors: Sort modes in alphabetical order, please :)
  '(
    c-basic-offset
    cmake-tab-width
    coffee-tab-width
    cperl-indent-level
    crystal-indent-level
    css-indent-offset
    editorconfig-set-indent
    erlang-indent-level
    ess-indent-offset
    fsharp-continuation-offset
    fsharp-indent-level
    fsharp-indent-offset
    haskell-indent-offset
    haskell-indent-spaces
    haskell-indentation-layout-offset
    haskell-indentation-left-offset
    haskell-indentation-starter-offset
    haskell-indentation-where-post-offset
    haskell-indentation-where-pre-offset
    jade-tab-width
    js-indent-level
    julia-indent-offset
    lisp-indent-offset
    livescript-tab-width
    lua-indent-level
    matlab-indent-level
    mustache-basic-offset
    nginx-indent-level
    nxml-child-indent
    octave-block-offset
    perl-indent-level
    ps-mode-tab
    puppet-indent-level
    ruby-indent-level
    rust-indent-offset
    scala-indent
    sgml-basic-offset
    sh-basic-offset
    sh-indent
    shm-indent-spaces
    slim-indent-offset
    tcl-continued-indent-level
    tcl-indent-level
    typescript-indent-level
    web-mode-block-padding
    web-mode-code-indent-offset
    web-mode-css-indent-offset
    web-mode-markup-indent-offset
    web-mode-script-padding
    web-mode-style-padding
    yaml-indent-offset
    ))

;;;###autoload
(defun universal-indent-size-set (size)
  "Set all indent size at once"
  (dolist (item universal-indent-size-var-list)
    (set item size)
    ))

(provide 'universal-indent-size)
;;; universal-indent-size.el ends here
