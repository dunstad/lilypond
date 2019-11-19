\version "2.18.2"
\include "cardify.ly"

dango = \relative c'' { f8( ees as4) }

#(define musicList (cardifyMusicList (list 
  #{ \relative c''' {\key aes \major \dango aes( bes) bes( c) aes( ees) } #}
  #{ \relative c''' {\key aes \major \dango aes( bes) bes( c8 c) aes4( ees) } #})))

$@musicList