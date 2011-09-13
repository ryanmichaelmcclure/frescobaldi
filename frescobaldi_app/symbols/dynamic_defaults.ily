\version "2.14.0"

\include "icon_defaults.ily"

\paper {
  paper-height = 24\pt
  paper-width = 24\pt
  top-markup-spacing = #'((basic-distance . 3.2))
  last-bottom-spacing = #'((padding . 0))
}

#(define-markup-command
  (icon layout props size text)
  (number? markup?)
  (interpret-markup layout props
    (markup
      #:override (cons 'word-space 0)
              (#:translate '(2.4 . 0)
		 (#:center-align
		   (#:fontsize size text))))))

#(define size1 2.8)
#(define size2 0)
#(define size3 -3.5)

