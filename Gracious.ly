\version "2.24.0"
\include "Hymnal.ly"

\header
{
    title="Graciously The Lord Does Bless"
    % subtitle=""
    % poet=""
    % composer=""
    % arranger=""
    % meter=""
}

\score {
    <<
        \new ChordNames {
            \set chordChanges = ##t
            \transpose c c,
            \chordmode {
                f2:m f:m bf:m f:m
                f:m bf:m c f:m
                bf:m c c:7 f:m
                df f:m c f:m
            }
        }
        \new Staff <<
            \set Staff.midiInstrument = "acoustic grand"
            \key f \minor
            \time 4/4
            \tempo "" 4 = 120
            \new Voice = "sops" \relative f' {
                \stemUp
                f4 af f4. df8 f4 df c2
                f4 af bf4. df8 c4 g af2
                df4 c8 bf c2 bf4 g af2
                af4 f af4. af8 g4 e f2
            }
            \new Voice = "alto" \relative f' {
                \stemDown
                c4 f c4. c8 df4 df c2
                c4 f f4. f8 e4 g f2
                bf4 f8 af g2 c,4 c f2
                df4 f af4. af8 c,4 e f2
            }
            \addlyrics { \lyr \lyricmode {
                !Gra- cious- ly the Lord does bless
                !Life e- ter- nal I pos- sess
                !Je- sus has died, sins He bore
                !Teach me, Lord, to thank you more.
            } }
        >>
        \new Staff <<
            \clef bass
            \key f \minor
            \new Voice = "tenor" \relative c' {
                \stemUp
                c4 c c4. c8 bf4 bf af2
                c4 c f,4. bf8 g4 e f2
                bf4 af8 f g2 g4 bf f2
                f4 af c4. c8 e,4 g af2
            }
            \new Voice = "bass" \relative c' {
                \stemDown
                af4 f af4. af8 df,4 f f2
                af4 f df4. f8 e4 c c2
                f4 f8 df e2 e4 e c2
                df4 df f4. f8 c4 c4 c2
            }
        >>
    >>
    \layout { }
    \midi { \context { \ChordNames \remove Note_performer } } % Stop chords from sounding in the MIDI
}

% Additional verses
\markup \fill-line {
\column {
"2. Fellowship and family"
"Ears to hear, and eyes to see"
"Mind that can think on your law"
"Teach me, Lord, to thank You more."
" "
"3. In the midst of dark despair"
"Your Word shines, a hope to bear"
"Brings peace and calm, 'mid uproar"
"Teach me, Lord, to thank You more."
}
\column {
"4. When comes death, with Him I'll live"
"And forever, praise I'll give"
"But even now, bruised and sore,"
"Teach me, Lord, to thank You more."
" "
"5. Though our thanks is often poor"
"Though we fail to Thee adore"
"Help us to think, more and more,"
"We have much to thank You for."
}
}
