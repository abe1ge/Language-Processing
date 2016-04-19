
#|===================================================
Lkit loader for UT/AI 1201/0502
=====================================================
;; abel load file "C:\\Users\\Abelether\\Documents\\03-University\\Artificial Intelligence\\section -03\\Language-Processing\\Lkit"
;; abel uni computer U:\03-year\AI\section-03\GitHub\Language-Processing\Lkit
;; jess load file "C:\\Users\\Jess\\Documents\\GitHub\\Language-Processing\\Lkit"
;; adam load file "C:\\Users\\Adam\\OneDrive\\AI SHARED\\Section-03\\Code\\Language-Processing\\Lkit"

|#



(defparameter lkit-root-path "C:\\Users\\Adam\\OneDrive\\AI SHARED\\Section-03\\Code\\Language-Processing\\Lkit")

;;(load (concatenate 'string lkit-root-path "\\utils.lsp"))
;;(load (concatenate 'string lkit-root-path "\\matcher(1.7e).lsp"))
(use-package :matcher)

;; set environment to modern & warn user
(format t "Loading environment assumed MODERN, setting :MODERN")
(setf *features* (cons :MODERN *features*))

;; bootstrap Lkit
(let ((files '("x6-1(1c).lsp"        ; 3 Lkit files
               "x6-2(1c).lsp"
               "x6-3(1c).lsp"
               "rule-interface(1.3b).cl"
               "slot-parser(1.4).cl"
               )))
   (dolist (f files 'ok)
      (load (concatenate 'string lkit-root-path "\\" f))
      ))


