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

makeScore =
#(define-scheme-function
     (parser location music)
     (ly:music?)
   #{
     \score {
        \makeStaff $music
        \layout { }
      }
   #})

makeEasyScore =
#(define-scheme-function
     (parser location music)
     (ly:music?)
   #{
     \score {
        \makeStaff $music
        \layout { \easyHeadsOn }
      }
   #})

makeTwoScores = 
#(define
     (music)
   #{
      \makeScore $music
      \makeEasyScore $music
   #})


dango = \relative c'' { f8( ees as4) }


dangoA = \relative c''' {\key aes \major \dango aes( bes) bes( c) aes( ees) }
dangoB = \relative c''' {\key aes \major \dango aes( bes) bes( c8 c) aes4( ees) }

% \makeScore \dangoA
% \makeEasyScore \dangoB

#(define musicList (list dangoA dangoB))
#(define musicListOne (map ly:make-score musicList))
% 'and' used here to give the lambda the right return value for map
easyLayout = \layout { \easyHeadsOn }
midi = \midi { }
#(define musicListTwo (map (lambda (score) 
  (and
    (ly:score-add-output-def! score easyLayout)
    (ly:score-add-output-def! score midi) score))
  (map ly:make-score musicList)))

$@musicListOne
$@musicListTwo