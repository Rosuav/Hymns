% The Lost Chord, simplified arrangement for chord and melody
\include "Hymnal.ly"

\header
{
    title="The Lost Chord"
    composer="Sir Arthur Seymour Sullivan"
}

\score {
    <<
        \new ChordNames {
            \set chordChanges = ##t
            \transpose c c,
            \chordmode {
	        f1 bf
            }
        }
        \new Staff <<
            \set Staff.midiInstrument = "acoustic grand"
            \key f \major
            \time 4/4
            \tempo "" 4 = 120
            \new Voice = "melody" \relative f' {
                s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 % TODO: Put in a simple melody lifted from the accompaniment
		% Verse one
		f4 f8 f8 f4 f8 f8 f4 f4 s4
            }
            \addlyrics { \lyr \lyricmode {
                !Sea- ted one day at the or- gan,
            } }
        >>
    >>
    \layout { }
    \midi { }
}
