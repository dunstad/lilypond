\version "2.18.2"
\include "cardify.ly"

dango = \relative c'' { f8( ees as4) }

% #(define musicList (cardifyMusicList (list 
#(define musicList (scorifyMusicList (list 
  #{ \relative c''' {\key aes \major \dango aes4( bes) bes( c) aes( ees) } #}
  #{ \relative c''' {\key aes \major \dango aes4( bes) bes( c8 c) aes4( ees) } #}
  #{ \relative c''' {\key aes \major \dango aes4( bes) bes( c8 c aes2) } #}
  #{ \relative c''' {\key aes \major \dango aes4( bes8 bes aes2) r } #}
  #{ \relative c''' {\key aes \major \dango aes4( bes) bes( c bes2) } #}
  #{ \relative c''' {\key aes \major des,2( f) c( f) } #}
  #{ \relative c''' {\key aes \major des2( f) c( g') } #}
  #{ \relative c''' {\key aes \major \dango aes4( bes aes2) r } #}
  #{ \relative c''' {\key aes \major des,2( f) aes( g) } #}
)))
% #{ \relative c''' {\key aes \major  } #}

$@musicList