#(define scorifyMusicList (lambda (musicList) (map ly:make-score musicList)))

easyLayout = \layout { \easyHeadsOn }
midi = \midi { }
% 'and' used here to give the lambda the right return value for map
#(define easyScorifyMusicList (lambda (musicList)
  (map (lambda (score) 
    (and
      (ly:score-add-output-def! score easyLayout)
      (ly:score-add-output-def! score midi) score))
    (map ly:make-score musicList))))

% https://stackoverflow.com/a/12647024
#(define (merge listA listB)
  (if (null? listA) listB
    (if (null? listB) listA
      (cons (car listA) (cons (car listB) (merge (cdr listA) (cdr listB)))))))

#(define cardifyMusicList (lambda (musicList)
  (merge
    (scorifyMusicList musicList)
    (easyScorifyMusicList musicList))))