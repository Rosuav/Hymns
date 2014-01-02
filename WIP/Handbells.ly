\include "Hymnal.ly"

% Attempt at generic handbell-compatible scoring.

\header
{
    title="Just As I Am, Without One Plea"
}

orange = #(rgb-color 1 0.5 0)
yellow = #(rgb-color 1 1 0)

% Taken straight from the docs and then tweaked very slightly
#(define (bell-color grob)
    "Color the notehead according to its position on the staff."
    (case (ly:grob-property grob 'staff-position)
      ; Why these aren't 1-8 I'm not wholly sure
      ((-6) red      )  ; for C
      ((-5) orange   )  ; for D
      ((-4) yellow   )  ; for E
      ((-3) green    )  ; for F
      ((-2) darkgreen)  ; for G
      ((-1) cyan     )  ; for A
      (( 0) darkblue )  ; for B
      (( 1) magenta  )  ; for >C
    )
)

\score {
    <<
        \new Staff <<
            \key c \major
            \time 3/4
            \tempo "" 4 = 120
            \new Voice \relative c' {
                \stemUp
                s2
                % Arrange to obtain color from procedure above
                \override NoteHead #'color = #bell-color
                \override Stem #'color = #bell-color
                c8(d8) e2 e4 g4.(f8) e4 d4.(e8) f4 e2
                r4
            }
        >>
    >>
    \layout { }
}

