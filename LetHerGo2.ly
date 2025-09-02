% Let Her Go, by Sir Arthur Sullivan
% Words from Rejoice! #603 or RCH #595
\version "2.24.0"
\include "Hymnal.ly"

\header
{
    title="Let Her Go"
    subtitle="Jerusalem the Golden"
    % poet=""
    composer="Sir Arthur Sullivan" % circa 1898
    arranger="arr Chris Angelico" % 2010-12-09
    poet="Bernard of Morlaix, 1146"
    % composer="Sir Arthur Sullivan arr Chris Angelico"
    % meter=""
    % opus="\"Let Her Go\""
}

\score {
    <<
        \new ChordNames {
            \set chordChanges = ##t
            \transpose c c,
            \chordmode {
                \override ChordName.font-size = #-2
                s2.
                % Jerusalem
                g2 g4:dim g2. g g g ef:dim e:m a:m
                %
                a:m a:m a:m a:m d:7 d4:7 g c g d d g
            }
        }
        \new Staff <<
            \set Staff.midiInstrument = "acoustic grand"
            \key g \major
            \time 3/4
            \tempo "" 4 = 120
            \new Voice = "sops" \relative f' {
                s2
                \voiceOne
                d4 d4. d8 cs e d4 d g b4. as8 b g d2
                g8(a) b4 b b8 b b4 b b b4. c8 gs b a2
                e4 e4. e8 ds fs e4 e a8(b) c4. b8 c a e2
                e8(g) fs4 d' d8 d d4 g, a8(c) b8. g16 a4 fs g2.
            }
            % Words from Rejoice! #603
            \addlyrics { \lyr \lyricmode {
                \override LyricText.font-size = #-1
                \set stanza = #"1."
                !Je- ru- sa- lem the gol- den               % RCH #599
                !With milk and ho- ney blest,
                !Be- neath thy con- tem- pla- tion
                !Sink heart and voice op- pressed.
                !I know not, O I know not
                !What so- cial joys are there,
                !What ra- dian- cy of glo- ry,
                !What light be- yond com- pare.

                %{!Je- ru- sa- lem the gol- den             % Rejoice! #603
                !in glo- ry high a- bove;
                !O ci- ty of God's pres- ence,
                !O vi- sion of God's love:
                !how won- der- ful the plea- sures,
                !and joys a- wait- ing there;
                !what ra- dian- cy of glo- ry,
                !what peace be- yond com- pare!%}
            } }
            \addlyrics { \lyr \lyricmode {
                \override LyricText.font-size = #-1
                \set stanza = #"2."
                !They stand, those halls of Zi- on,
                !Con- ju- bi- lant with song,
                !And bright with many an an- gel,
                !And all the mar- tyr throng;
                !The Prince is e- ver in them,
                !The day- light is se- rene;
                !The pa- stures of the ble- ssed
                !Are decked in glo- rious sheen.

                %{!They stand, those halls of Zi- on,
                !all ju- bi- lant with song;
                !and bright with many an an- gel,
                !and all the mar- tyr throng;
                !the Prince is e- ver in them,
                !the day- light is se- rene;
                !the tree of life and heal- ing
                !has leaves of rich- est green.%}
            } }
            \new Voice = "alto" \relative f' {
                \voiceTwo
                s2
                b,4 b4. b8 as as b4 b b d4. d8 d d b2
                b4 d4 d d8 d ds4 ds ds e4. e8 e e e2
                c4 c4. c8 c c c4 c c e4. e8 e e e2
                e4 d4 fs fs8 fs fs4 g e d8. d16 d4 d d2.       % Last note should be e2, but to make this resolve without the repeat, fudge it to a G major chord.
            }
        >>
        \new Staff <<
            \clef bass
            \key g \major
            \new Voice = "tenor" \relative c' {
                s2
                \voiceOne
                g4 g4. g8 g g g4 g g g4. g8 g g g2
                b4 b4 b b8 b b4 b b c4. c8 c c c2
                a4 a4. a8 a a a4 a a a4. c8 c c c2
                c4 c4 c c8 c c4 b c d8. b16 c4 c b2.
            }
            \new Voice = "bass" \relative c' {
                \voiceTwo
                s2
                g,4 g4. g8 g g g4 g g g4. g8 g g g2
                g'4 g4 g g8 g g4 g g c,4. c8 c c c2
                c4 a4. a8 a a a4 a a a'4. a8 a a a2
                a4 d,4 d d8 d d4 e a, d8. d16 d4 d g,2.
            }
        >>
    >>
    \layout { }
    \midi { \context { \ChordNames \remove Note_performer } } % Stop chords from sounding in the MIDI
}

% Additional verses
\markup \fill-line {
\column {
"3. There is the throne of David;"
"and there from care released,"
"the shout of them that triumph,"
"the song of them that feast:"
"and they who, with their leader,"
"have conquered in the fight,"
"for ever and for ever"
"are clad in robes of white."
}
\column {
"4. O sweet and blessed country,"
"the home of God's elect;"
"O sweet and blessed country,"
"that eager hearts expect!"
"Jesus, in mercy bring us,"
"to that dear land of rest"
"Who art, with God the Father"
"and Spirit, ever blest."
}
%{ Rejoice words:
\column {
"3. There is the throne of David;"
"and there from pain released,"
"the shout of those who triumph,"
"the song of those who feast:"
"and all who, with their leader,"
"have conquered in the fight,"
"are garlanded with glory"
"and robed in purest white."
}
\column {
"4.How lovely is that city,"
"the home of God's elect;"
"how beautiful the country"
"that eager hearts expect!"
"Jesus, in mercy bring us,"
"to that eternal shore"
"where Father, Son, and Spirit"
"are worshipped evermore."
}
End Rejoice %}
}
