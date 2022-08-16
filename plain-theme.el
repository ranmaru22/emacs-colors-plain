;;; plain-theme.el -- Minimal theme for Emacs 24.

;; Author: Alex Sun <alexsun82@icloud.com>
;; URL: https://github.com/ranmaru22/emacs-plain-theme
;; Version: 0.1

;; Permission is hereby granted, free of charge, to any person
;; obtaining a copy of this software and associated documentation
;; files (the "Software"), to deal in the Software without
;; restriction, including without limitation the rights to use, copy,
;; modify, merge, publish, distribute, sublicense, and/or sell copies
;; of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:

;; The above copyright notice and this permission notice shall be
;; included in all copies or substantial portions of the Software.

;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
;; NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
;; BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
;; ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
;; CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;; SOFTWARE.

;;; Commentary:
;; Minimal theme for Emacs 24 with deftheme.

;;; Code:

(deftheme plain
  "Minimal theme for Emacs 24.")

(let ((bg  "#222222")
      (bg2 "#424242")
      (bg3 "#545454")

      (fg  "#F1F1F1")
      (fg2 "#E5E5E5")
      (fg3 "#CCCCCC")
      (fg4 "#999999")

      (dark-red     "#C30771")
      (light-red    "#E32791")
      (dark-blue    "#008EC4")
      (light-blue   "#B6D6FD")
      (dark-cyan    "#20A5BA")
      (light-cyan   "#4FB8CC")
      (dark-yellow  "#A89C14")
      (light-yellow "#FFDD33")
      )

  (custom-theme-set-variables
   'plain
   '(frame-background-mode (quote dark)))

  (custom-theme-set-faces
   'plain
   `(default ((t (:foreground ,fg :background ,bg))))
   `(cursor ((t (:background ,light-blue))))
   )
  )

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory
                (file-name-directory load-file-name))))

(provide-theme 'plain)

;;; plain-theme.el ends here.
