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
  #{ \relative c''' {\key aes \major des,,2( < f des' >) < aes c, >( < c f, >) } #}
  #{ \relative c''' {\key aes \major < aes des, >( < des f, >) < aes c >( g) } #}
  #{ \relative c''' {\key aes \major \dango < aes ees >4( bes) < bes ees >( < c, ees >) aes( ees) } #}
  #{ \relative c''' {\key aes \major < aes,,,( des, >2 < des' f,) > c8 aes( aes4) f8 ees( ees4) } #}
  #{ \relative c''' {\key aes \major \dango aes( bes) < aes c, >2( e) } #}
  #{ \relative c''' {\key aes \major des4. aes8 f des'( des4) aes2( < bes g >) } #}
)))
% #{ \relative c''' {\key aes \major  } #}

$@musicList