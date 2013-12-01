% Theme from Alice: Madness Returns. Private transcription only.
\include "../Hymnal.ly"

\header
{
	title="Alice: Madness Returns theme"
}

\score {
	<<
		\new Staff <<
			\set Staff.midiInstrument = "violin"
			\key c \major
			\time 2/4
			\tempo "" 4 = 100
			\new Voice = "sops" \relative f' {
				r4. g,8 c g' gs g d2~d
				r4. g,8 d' g gs g c,2~c
				r4. g8 c g' gs g d'2(gs,)
				r4. gs8 g b c b b2(c)
				r4 c4 c g gs2(g)
				g,8 b cs d f gs a as b2(c)
				r4 c4 c g gs g as b d2
			}
		>>
	>>
	\layout { }
	\midi { }
}
