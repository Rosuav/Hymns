% Helmsley: "Lo! He comes, with clouds descending"
\include "Hymnal.ly"

\header
{
    title="Lo! He comes, with clouds descending"
    % subtitle=""
    % poet=""
    % composer=""
    % arranger=""
    % meter=""
    % piece="" ??
}

\score {
    <<
        \new ChordNames {
            \set chordChanges = ##t
            \transpose c c,
            % \set Chords.midiInstrument = "flute"
            \chordmode {
                g2 g e:m e:m c c d g
                d d g d g c b,:m d
                g2 g e:m e:m c c d g
                d d g d g c b,:m d
                a:m/e a:m/e c g e:m e4:m c b,:m a:m/e e2:m
                g g a:m/e d g g d d:7 g d g1
            }
        }
        \new Staff <<
            \set Staff.midiInstrument = "acoustic grand"
            \key g \major
            \time 4/4
            \tempo "" 4 = 120
            \new Voice = "sops" \relative f' {
                \stemUp \slurUp
                g2 b4( d) g,( fs) e( d) e4.( fs8 g4) fs8( e) d4.( c8) b2
                d2. d4 g2 a b4(d) c(b) b2(a)
                g2 b4( d) g,( fs) e( d) e4.( fs8 g4) fs8( e) d4.( c8) b2
                d2. d4 g2 a b4(d) c(b) b2(a)
                a4.(b8 a4) b c2 b g4.(a8 g4) c b(a) g2 b4.(c8 b4) d c(b) a2
                g2. a8(b) d,2 c' b a g1
            }
            \addlyrics { \lyr \lyricmode {
                !Lo! He comes, with clouds de- scend- ing,
                !Once for fav- oured sin- ners slain;
                !Thou- sand thou- sand saints at- tend- ing
                !Swell the tri- umph of His train;
                !Hal- le- lu- jah! Hal- le- lu- jah! Hal- le- lu- jah!
                !God ap- pears on earth to reign.
            } }
            \new Voice = "alto" \relative f' {
                \stemDown \slurDown
                d2 d2 b4(d) c(d) c4.(d8 e4) d8(c) a2 g
                a2. d4 d2 d4(fs) g(b) a(g) g2(fs)
                d2 d2 b4(d) c(d) c4.(d8 e4) d8(c) a2 g
                a2. d4 d2 d4(fs) g(b) a(g) g2(fs)
                fs4.(g8 fs4) d e(fs) g2 d(e4) e g(fs) e2 e2. d4 fs4(g) g(fs)
                d2. d4 d2 g g fs g1
            }
        >>
        \new Staff <<
            \clef bass
            \key g \major
            \new Voice = "tenor" \relative c' {
                \stemUp \slurUp
                b2 b4(a) g(b) g8(a b4) g2. g4 fs2 g
                fs4(g fs) fs g2 c b e d1
                b2 b4(a) g(b) g8(a b4) g2. g4 fs2 g
                fs4(g fs) fs g2 c b e d1
                d2. d4 c2 d b4.(a8 b4) c d4.(c8) b2
                g4.(a8 g4) g a(b8 c) d2
                b2. b4 a2 g4(a) b(c) d(c) b1
            }
            \new Voice = "bass" \relative c' {
                \stemDown \slurDown
                g2 g4(fs) e(b) c(g) c2. c4 d2 g,
                d'4(e d) c b2 a g c d1
                g2 g4(fs) e(b) c(g) c2. c4 d2 g,
                d'4(e d) c b2 a g c d1
                d2. b4 a2 g g'4.(fs8 e4) a, b8(c d4) e2 e2. b4 a(g) d'2
                g2. g4 fs2 e d d g,1
            }
        >>
    >>
    \layout { }
    \midi { \context { \ChordNameVoice \remove Note_performer } } % Stop chords from sounding in the MIDI
    % \midi { }
}

% Additional verses
\markup \fill-line {
\column {
"2. Every eye shall now behold Him,"
"Robed in dreadful majesty;"
"Those who set at nought and sold Him,"
"Pierced, and nailed Him to the tree,"
"Deeply wailing, deeply wailing, deeply wailing,"
"Shall the true Messiah see."
}
\column {
"3. Now redemption, long expected,"
"See in solemn pomp appear;"
"All His saints, by man rejected,"
"Now shall meet Him in the air;"
"Hallelujah! Hallelujah! Hallelujah!"
"See the day of God appear!"
}
}
\markup \fill-line { \column {
" "
"4. Yea, Amen! let all adore Thee,"
"High on Thine eternal throne;"
"Saviour, take the power and glory,"
"Claim the kingdom for Thine own"
"O come quickly; O come quickly; O come quickly;"
"Hallelujah! come, Lord, come!"
}}
