\version "2.18.2"
\include "cardify.ly"

keyAndTempo = { \key aes \major \tempo "Moderato" 4 = 100 }

% #(define musicList (scorifyMusicList (list
#(define musicList (cardifyMusicList (list
  #{ \relative c''' { \keyAndTempo  } #}
)))

% #{ \relative c''' { \keyAndTempo  } #}
% #{ \relative c { \clef bass \keyAndTempo  } #}

$@musicList