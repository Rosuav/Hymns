% Instant hymn file, just add content!
\include "Hymnal.ly"

\header
{
	title="[music title]"
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
			\key f \major  % Will need to be transposed down
			\time 4/4
			\tempo "" 4 = 120
			\new Voice = "sops" \relative f' {
				\voiceOne
				a4 a8 a c4.c8 c4. a8 bf4.
				g8 a4(c f) c8(a) g2. g4 f1
			}
			\addlyrics { \lyr \lyricmode {
				!To Him be glo- ry in the church
				!For- e- ver more!
				!A- men.
			} }
			\new Voice = "alto" \relative f' {
				\voiceTwo
			}
		>>
		\new Staff <<
			\clef bass
			\key c \major
			\new Voice = "tenor" \relative c' {
				\voiceOne
			}
			\new Voice = "bass" \relative c' {
				\voiceTwo
			}
		>>
	>>
	\layout { }
	\midi { \context { \ChordNameVoice \remove Note_performer } } % Stop chords from sounding in the MIDI
}
