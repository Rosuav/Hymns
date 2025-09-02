\version "2.24.0"
% Jesu, Joy of Man's Desiring by JS Bach
\include "Hymnal.ly"

\header
{
	title="Jesu, Joy of Man's Desiring"
}

\score {
	<<
		\new ChordNames {
			\set chordChanges = ##t
			\set ChordNames.midiInstrument = "flute"
			\transpose c c,
			\chordmode {
				g4. g c g g g c g a:m d d d:7
				g g c g g g c g g g g g g
				g c d g d c d:7 g d d d d d d
				g g c g g g c g d g2.
			}
		}
		\new Staff <<
			\set Staff.midiInstrument = "acoustic grand"
			\key g \major
			\time 9/8
			\tempo "" 4 = 100
			\new Voice = "sops" \relative f' {
				r8
				g a b d c c e d d g fs g d b g a b c d e d c b a b g fs g a d, fs a c b a
				b g a b d c c e d d g fs g d b g a b e, d' c b a g d g fs
				g b d g d b g b d
				g2. c,4. d2. d4. c2. b4. a8 d, e fs a g a c b c a fs d fs a c b a
				b g a b d c c e d d g fs g d b g a b e, d' c b a g d g fs
				g2. r4.
			}
		>>
		\new Staff <<
			\new Voice {
				% r4. r r r r r r r r r r r r r r r r
				s4. s s s s s s s s s s s s s s s s
				s4. s s s s s s s s s s s s s s s s
				s4. s s s s s s s s s s s s s s s s
			}
		>>
	>>
	\layout { }
	\midi {  }
}
