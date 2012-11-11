% Yet it ever comes back to me
\include "Hymnal.ly"

\header
{
	title="Back To Me"
	subtitle="[words title]"
	% poet=""
	composer="Sir Arthur Sullivan" % circa 1898
	arranger="arr Chris Angelico" % 2012-10-14
	% meter="" ??
	% piece="" ??
}

\score {
	<<
		\new ChordNames {
			\set chordChanges = ##t
			\transpose c c,
			\chordmode {
				s4 e
				b:7 b:7 e e b:7 b:7 e
				e b b e8 e:7 c c
				e4 b e a e fs:m e
			}
		}
		\new Staff <<
			\set Staff.midiInstrument = "acoustic grand"
			\key e \major
			\time 2/4
			\tempo "" 4 = 70
			\new Voice = "sops" \relative f' {
				r4.
				\voiceOne
				gs16 e ds8 fs fs e16 ds e8 gs gs
				e fs16 fs a8 a gs16(fs) gs8(b4)
				gs16 gs fs8 a a gs16 fs gs8 b e
				e,16[fs] gs a gs8 fs b, b'4.
				a8 gs16 fs e8 fs gs e4.
				\oneVoice
				r8
			}
			\addlyrics { \lyr \lyricmode {
				!
			} }
			\new Voice = "alto" \relative f' {
				s4.
				\voiceTwo
				gs16 e b8 b b r b b b e ds ds ds ds e e4
				e8 ds ds ds r e gs g r e r ds b e4 e
				e8 r cs b b4.
				s8
			}
		>>
		\new Staff <<
			\clef bass
			\key e \major
			\new Voice = "tenor" \relative c' {
				r4.
				\voiceOne
				b8 a a a r gs gs gs r a a a a gs gs4
				b8 b b b r b e e r b r b b b4 cs
				b8 r a a gs4.
				\oneVoice
				r8
			}
			\new Voice = "bass" \relative c' {
				s4.
				\voiceTwo
				gs8 b, b b r b b b r b b b b b b4
				b8 b b b r e d c r b r a a gs4 fs
				b8 r b b e4.
				s8
			}
		>>
	>>
	\layout { }
	% \midi { \context { \ChordNameVoice \remove Note_performer } } % Stop chords from sounding in the MIDI
	\midi { }
}
