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
#(define musicListTwo (map ly:make-score (map ly:make-music musicList)))
#(define musicListThree (map ly:make-music musicList))

$@musicListOne

% $(make-music
%   'NoteEvent
%   'articulations
%   (list (make-music
%           'ArticulationEvent
%           'articulation-type
%           "accent"))
%   'duration
%   (ly:make-duration 2 0 1/1)
%   'pitch
%   (ly:make-pitch -1 0 0))

% \makeTwoScores \dangoA
% \makeTwoScores \dangoB