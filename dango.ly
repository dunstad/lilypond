\version "2.18.2"
\include "cardify.ly"

dango = \relative c'' { f8( ees as4) }
keyAndTempo = { \key aes \major \tempo "Moderato" 4 = 100 }

% #(define musicList (cardifyMusicList (list 
#(define musicList (scorifyMusicList (list 
  #{ \relative c''' { \keyAndTempo \dango aes4( bes) bes( c) aes( ees) } #}
  #{ \relative c''' { \keyAndTempo \dango aes4( bes) bes( c8 c) aes4( ees) } #}
  #{ \relative c''' { \keyAndTempo \dango aes4( bes) bes( c8 c aes2) } #}
  #{ \relative c''' { \keyAndTempo \dango aes4( bes8 bes aes2) r } #}
  #{ \relative c''' { \keyAndTempo \dango aes4( bes) bes( c bes2) } #}
  #{ \relative c''' { \keyAndTempo des,2( f) c( f) } #}
  #{ \relative c''' { \keyAndTempo des,2( f) c( g') } #}
  #{ \relative c''' { \keyAndTempo \dango aes4( bes aes2) r } #}
  #{ \relative c''' { \keyAndTempo des,2( f) aes( g) } #}
  #{ \relative c''' { \keyAndTempo des,,2( < f des' >) < aes c, >( < c f, >) } #}
  #{ \relative c''' { \keyAndTempo < aes, des, >2( < des f, >) < aes c, >( g) } #}
  #{ \relative c''' { \keyAndTempo \dango < aes ees >4( bes) < bes ees, >( < c ees, >) aes( ees) } #}
  #{ \relative c''' { \keyAndTempo < aes, des, >2( < des f, >) c,8 aes'( aes4) f8 c'( c4) } #}
  #{ \relative c''' { \keyAndTempo \dango aes( bes) < aes c, >2( ees) } #}
  #{ \relative c''' { \keyAndTempo des,,4. aes'8 f des'( des4) aes2( < bes g >) } #}
)))
% #{ \relative c''' {\key aes \major  } #}

$@musicList