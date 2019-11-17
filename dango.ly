\version "2.18.2"

makeStaff =
#(define-music-function
     (parser location music)
     (ly:music?)
   #{
        \new Staff {
            $music
        }
   #})

easyScore =
#(define-scheme-function
     (parser location music)
     (ly:music?)
   #{
     \score {
        \makeStaff $music
        \layout { }
      }
   #})


dango = \relative c'' { f8( ees as4) }


dangoA = \relative c''' {\key aes \major \dango aes( bes) bes( c) aes( ees) }
dangoB = \relative c''' {\key aes \major \dango aes( bes) bes( c) aes( ees) }

\easyScore \dangoA
\easyScore \dangoB