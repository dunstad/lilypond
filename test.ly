\version "2.18.2"

cardify =
#(define-scheme-function
    (parser location music)
    (ly:music?)
    #{
        \score {
            \new Staff {
                \relative c''' {
                    \key aes \major
                    $music
                }
            }
            \layout { }
        }
    #})

dango = \relative c'' { f8( ees as4) }

\book {
    \cardify \relative c''' {\key aes \major \dango aes( bes) bes( c) aes( ees) }
    % \score {
    %     \new Staff {
    %         \relative c''' {
    %             \key aes \major
    %             \dango aes( bes) bes( c) aes( ees)
    %         }
    %     }
    % \layout { }
    % }
    \score {
        \new Staff {
            \relative c''' {
                \key aes \major
                \dango aes( bes) bes( c8 c aes2)
                \dango aes4( bes8 bes aes2) r
                \dango aes4( bes) bes( c bes2)
                des,2( f) c( f)
                des( f) c( g')

                \dango aes4( bes aes2) r
                des,2( f) aes( g)
            }
        }
    \layout { }
    }
}

