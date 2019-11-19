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
dangoB = \relative c''' {\key aes \major \dango aes( bes) bes( c) aes( ees) }

% \makeScore \dangoA
% \makeEasyScore \dangoB

#(define musicList (list dangoA dangoA))
#(define musicListOne (map ly:make-score musicList))
#(define musicListTwo (map (lambda (score) 
  (ly:score-add-output-def! score $defaultlayout)) (map ly:make-score musicList)))

$(first musicListOne)
\easyHeadsOn
% $@(map (lambda (music) (ly:make-music #{ \makeEasyScore $music #} )) musicList)
$(first musicListOne)
\easyHeadsOff

\void \displayScheme \override NoteHead.stencil = #note-head::brew-ez-stencil

% $@musicListOne
% $@musicListTwo

% \makeTwoScores \dangoA
% \makeTwoScores \dangoB