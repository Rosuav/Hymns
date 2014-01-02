% Laine "I can but tell I knelt and prayed"
\include "Hymnal.ly"

\header
{
	title="I Can But Tell"
	subtitle="[words title]"
	% poet=""
	% composer=""
	% arranger=""
	% meter="" ??
	% piece="" ??
}

\score {
	<<
		\new ChordNames {
			\set chordChanges = ##t
			\transpose c c,
			\chordmode {
			}
		}
		\new Staff <<
			\set Staff.midiInstrument = "acoustic grand"
			\key f \major
			\time 2/4
			\tempo "" 4 = 52
			\new Voice = "sops" \relative f' {
				r4. % To start on an upbeat, put this _before_ the \voiceOne (otherwise it works fine, but prints badly)
				\voiceOne
				a8 a g16(f) bf8 g c a d
				c16(bf) bf(a) g(f) a8 g g8. a16 f4
				a8 g16 f bf8 g c a d
				f f16(e) d(c) e8 d d8. e16 c4
				a8 a16 bf c8 c f, g16(a) bf8.
				bf16 bf8 g a f16(ef') ef8 d d4
				d,8 e16 e fs8 a g16(fs) g8 d'
				d, e16(d) c8 c' a g16(a f a) g4 f2
			}
			\addlyrics { \lyr \lyricmode {
				!
			} }
			\new Voice = "alto" \relative f' {
				s2. % The same rest, but as a spacer so it doesn't print
				\voiceTwo
			}
		>>
		\new Staff <<
			\clef bass
			\key f \major
			\new Voice = "tenor" \relative c' {
				r2.
				\voiceOne
			}
			\new Voice = "bass" \relative c' {
				s2.
				\voiceTwo
			}
		>>
	>>
	\layout { }
	\midi { \context { \ChordNameVoice \remove Note_performer } } % Stop chords from sounding in the MIDI
}
