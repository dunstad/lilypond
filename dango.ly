\version "2.18.2"
\include "cardify.ly"

dango = \relative c'' { f8( ees as4) }
fastDango = \relative c''' { bes4( aes8 f~ f aes bes c ees bes c4 }
keyAndTempo = { \key aes \major \tempo "Moderato" 4 = 100 }
nakaYoshi = \relative c'' { bes8(\< ees aes bes)\! }

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
  #{ \relative c''' { \keyAndTempo des8( c aes f~ f aes bes f aes4) ees( f aes) } #}
  #{ \relative c''' { \keyAndTempo ges,2( bes) aes( ees) } #}
  #{ \relative c''' { \keyAndTempo ees,4.( aes8 des,4. des8 ees des ees des) \nakaYoshi } #}
  #{ \relative c''' { \keyAndTempo \fastDango aes8 ees aes bes) } #}
  #{ \relative c \clef bass { \keyAndTempo r2 g,4( ees) des aes < aes' f' > aes c aes < aes' ees' > aes } #}
  #{ \relative c''' { \keyAndTempo bes4( aes8 f~ f bes aes ees' c2) bes,8( ees aes bes) } #}
  #{ \relative c \clef bass { \keyAndTempo des aes < aes' f' > aes f c' < g' ees'> ees } #}
  #{ \relative c''' { \keyAndTempo \fastDango aes g) } #}
  #{ \relative c'' { \keyAndTempo f4.( f8 g4 aes8 g~ g aes4.) \nakaYoshi } #}
  #{ \relative c \clef bass { \keyAndTempo bes,8( f bes des') ees( bes ees'4) } #}
  #{ \relative c \clef bass { \keyAndTempo bes,8( f bes des') ees( bes ees'4) aes,8 ees c' ees, g,( ees' bes'4) } #}
  #{ \relative c''' { \keyAndTempo < bes bes, >4(   aes8 f~ f aes bes c < ees bes ees, >\arpeggio bes c4 aes ees aes bes) } #}
  #{ \relative c \clef bass { \keyAndTempo des8( aes' des f des aes des,4) c aes' < aes' ees' > aes  } #}
  #{ \relative c''' { \keyAndTempo < bes f bes, >4(\arpeggio aes8 f~ f bes aes ees' < c ees, >2) bes8( ees aes bes) } #}
  #{ \relative c \clef bass { \keyAndTempo des8( aes' des f) des4( aes) f8 c' aes' c < g g, >4( ees) } #}
  #{ \relative c''' { \keyAndTempo < bes f bes, >4(\arpeggio aes8 f~ f aes bes c < ees bes ees, >\arpeggio bes c4 aes g) } #}
  #{ \relative c \clef bass { \keyAndTempo des4( aes' des f aes2) c4 aes' < g' ees' > aes, } #}
  #{ \relative c' { \keyAndTempo < f des >2( < g ees >4 aes8 g~ g aes4.) < aes, ees, >2 } #}
  #{ \relative c \clef bass { \keyAndTempo bes4( bes' ees, g) aes,( ees' c'2) } #}
  #{ \relative c''' { \keyAndTempo < bes des, bes >8(\arpeggio aes' f aes bes aes ees' c~ c1) } #}
  #{ \relative c' { \keyAndTempo < aes f des >2\arpeggio aes aes1 } #}
)))
% #{ \relative c''' { \keyAndTempo  } #}
% #{ \relative c \clef bass { \keyAndTempo  } #}

$@musicList