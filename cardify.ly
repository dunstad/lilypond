#(define scorifyMusicList (lambda (musicList)
  (map ly:make-score musicList)))

easyLayout = \layout { \easyHeadsOn }
midiOutput = \midi { }
% 'and' used here to give the lambda the right return value for map
#(define easyScorifyMusicList (lambda (musicList)
  (map (lambda (score) 
    (and
      (ly:score-add-output-def! score easyLayout)
      (ly:score-add-output-def! score midiOutput) score))
    (scorifyMusicList musicList))))

% https://stackoverflow.com/a/12647024
#(define (merge listA listB)
  (if (null? listA) listB
    (if (null? listB) listA
      (cons (car listA) (cons (car listB) (merge (cdr listA) (cdr listB)))))))

#(define bookifyScore (lambda (score)
  (ly:make-book $defaultpaper $defaultheader score)))

% set-global-staff-size returns false i guess
#(define cardifyMusicList (lambda (musicList)
  (or
    (set-global-staff-size 50)
    (merge
      (map bookifyScore (scorifyMusicList musicList))
      (map bookifyScore (easyScorifyMusicList musicList))))))