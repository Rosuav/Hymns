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
				% Use "\parenthesize bf" to put the chord name in parens.
				% Only applicable if the chord changed at that point.
				% CJA 20250902: Using parens for uncertain notation, may or may not need these ones.
				% Clean this up later and use the parens correctly.
				f1 bf2 g4:m \parenthesize g:m7 c2. c4:7 f2 g:m f g:m c f c1:7 f/bf f
				f1 d:m f2 c:7 f1
			}
		}
		\new Staff <<
			\set Staff.midiInstrument = "acoustic grand"
			\key f \major
			\time 4/4
			\tempo "" 4 = 120
			{
				\new Voice = "accomp" \relative f' {
					s1 s1 s1 s1 s1 s1 s1 s1 s1 % TODO: Put in a simple melody lifted from the accompaniment
				}
				\new Voice = "melody" \relative f' {
					% Verse one
					f4 f8 f8 f4 f8 f8 f4 f4 s4 f8 f f4 f8 f g4. g8 a2
				}
				\addlyrics { \lyr \lyricmode {
					!Sea- ted one day at the or- gan,
					!I was wea- ry and ill at ease,
				} }
			}
		>>
	>>
	\layout { }
	\midi { }
}
