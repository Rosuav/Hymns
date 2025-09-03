% The Lost Chord, simplified arrangement for chord and melody
\version "2.24.1"
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
					r4 c f e d d g f c' bf a c
					f e d c c a g f e g a c bf a g e f2 a,4 g f'1
				}
				\new Voice = "melody" \relative f' {
					% Verse one
					f4 f8 f8 f4 f8 f8 f4 f4 s4 f8 f f4 f8 f g4. g8 a2
					r4 f8 f bf4. bf8 bf4 bf a2 g f4 g8 a g4 f e2
					r4 c d ds e f8 f a4 g r e fs gs8 gs a4 b c2
					r4 c,8 c a'4 bf c a f g a bf a g8 f g4 e f2
					g4 g bf2 a4 f f8( e f d) g2 f2. r4
				}
				\addlyrics { \lyr \lyricmode {
					!Sea- ted one day at the or- gan,
					!I was wea- ry and ill at ease,
					!And my fin- gers wan- der'd i- dly
					!O- ver the noi- sy keys;
					!I know not what I was play- ing,
					!Or what I was dream- ing then,
					!But I struck one chord of mu- sic
					!like the sound of a great A- men,
					!Like the sound of a great A- men.
				} }
			}
		>>
	>>
	\layout { }
	\midi { }
	% \midi { \context { \ChordNames \remove Note_performer } } % Stop chords from sounding in the MIDI
}
