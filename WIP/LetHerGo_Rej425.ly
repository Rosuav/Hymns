% Let Her Go, by Sir Arthur Sullivan
% lilypond -fpdf -fpng -dresolution=120 LetHerGo.ly
\include "Hymnal.ly"

\header
{
    title="Let Her Go"
    subtitle="My Hope is in the Lord"
    % poet=""
    composer="Sir Arthur Sullivan" % circa 1898
    arranger="arr Chris Angelico" % 2010-12-09
    % composer="Sir Arthur Sullivan arr Chris Angelico"
    % meter=""
    % piece="" ??
}

\score {
    <<
        \new ChordNames {
            \set chordChanges = ##t
            \transpose c c,
            \chordmode {
                \override ChordName #'font-size = #-2
                r2 r4
                % My hope is in
                g2 g4:dim g2. r r g ef:dim e:m a:m
                % No merit
                r r r r d:7 r4 g c g d r g
            }
        }
        \new Staff <<
            \set Staff.midiInstrument = "acoustic grand"
            \key g \major
            \time 3/4
            \tempo "" 4 = 120
            \new Voice = "sops" \relative f' {
                r2
                \voiceOne
                d4 d4. d8 cs e d2 g4 b4. as8 b g d2         % My hope
                g8(a) b4 b b b b b b4. c8 gs b a2           % and paid
                e4 e4. e8 ds fs e2 a8(b) c4. b8 c a e2      % No merit
                e8(g) fs4 d' d d g, a8(c) b g a4 fs g2      % my only
            }
            % Lyrics transcribed from Rejoice! hymnal (#425).
            \addlyrics { \lyr \lyricmode {
                \override LyricText #'font-size = #-2
                !My hope is in the Lord
                !who gave Him- self for me,
                !and paid the price of all
                !my sin at Cal- va- ry.
                !No me- rit of my own
                !His an- ger can sup- press,
                !my on- ly hope is found
                !in Je- sus' right- eous- ness.
            } }
            \addlyrics { \lyr \lyricmode {
                \override LyricText #'font-size = #-2
                !And now for me He stands
                !be- fore the Fa- ther's throne,
                !and shows His wound- ed hands,
                !and names me as His own.
                !His grace has planned it all,
                !I on- ly must be- lieve,
                !and re- cog- nise His work
                !of love and Christ re- ceive.
            } }
            \new Voice = "alto" \relative f' {
                \voiceTwo
                s2
                b,4 b4. b8 bf bf b2 b4 d4. d8 d d b2
                b8(b) d4 d d ds ds ds e4. e8 e e e2
                c4 c4. c8 c c c2 c8(c) e4. e8 e e e2
                e8(e) d4 fs fs fs g e8(e) d d d4 d d2       % Last note should be e2, but to make this resolve without the repeat, fudge it to a G major chord.
            }
        >>
        \new Staff <<
            \clef bass
            \key g \major
            \new Voice = "tenor" \relative c' {
                r2
                \voiceOne
                g4 g4. g8 g g g2 g4 g4. g8 g g g2
                b4 b b b b b b c4. c8 c c c2
                a4 a4. a8 a a a2 a4 a4. c8 c c c2
                c4 c c c c b c d8 b c4 c b2
            }
            \new Voice = "bass" \relative c' {
                \voiceTwo
                s2
                g,4 g4. g8 g g g2 g4 g4. g8 g g g2
                g'4 g g g g g g c,4. c8 c c c2
                c4 a4. a8 a a a2 a4 a'4. a8 a a a2
                a4 d, d d d e a, d8 d d4 d g,2
            }
        >>
    >>
    \layout { }
    \midi { \context { \ChordNameVoice \remove Note_performer } } % Stop chords from sounding in the MIDI
}

