\version "2.18.2"

dango = \relative c'' { f8( ees as4) }

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c''' {
            \key aes \major
            \dango aes( bes) bes( c) aes( ees)
            \dango aes( bes) bes( c8 c aes2)
            \dango aes4( bes8 bes aes2) r
            \dango aes4( bes) bes( c bes2)
            des,2( f) c( f)
            des( f) c( g')

            \dango aes4( bes aes2) r
            des,2( f) aes( g)
        }
      }
    }
    \layout { }
  }
}

