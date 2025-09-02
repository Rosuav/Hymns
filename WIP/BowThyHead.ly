\version "2.24.0"
% Snippet from "Pineapple Poll", so technically the words aren't really there.
\include "../Hymnal.ly"

\score {
	<<
		\new ChordNames {
			\set chordChanges = ##t
			\time 6/8
			\set ChordNames.midiInstrument = "flute"
			\transpose g df, \chordmode {
				g2. g b~b
				e:m b4.:m cs4.:m b2.:m fs b:m
			}
		}
		\new Staff <<
			\set Staff.midiInstrument = "violin"
			\key af \major
			\time 6/8
			\tempo "" 4 = 100
			\new Voice = "melody" \transpose g df' \relative f' {
				\oneVoice
				g4.~g4 g8 g4. g b4 b8 b4. r2.
				b,4. cs d e fs2.~fs4. fs b,2.
			}
			% \addlyrics { \lyr \lyricmode {
			%	!Bow thy head to de- sti- ny!
			%	!Death thy doom and thou shalt die.
			% } }
		>>
		\new Staff <<
			\set Staff.midiInstrument = "flute"
			\key af \major
			\new Voice = "treble1" \transpose g df' \relative f' {
				\voiceOne
				g2.~g b~b
				b b4. b fs2. fs2. b,2.
			}
			\new Voice = "treble2" \transpose g df' \relative f' {
				\voiceTwo
				d2.~d ds~ds
				g fs4. e d2. cs2. b2.
			}
		>>
		\new Staff <<
			\clef bass
			\set Staff.midiInstrument = "flute"
			\key af \major
			\new Voice = "bass1" \transpose g df \relative c' {
				\voiceOne
				b2.~b b~b
				b b4. b b2. as2. b2.
			}
			\new Voice = "bass2" \transpose g df \relative c' {
				\voiceTwo
				g2.~g fs~fs
				e d4. cs fs2. fs2. b,2.
			}
		>>
	>>
	\layout { }
	% \midi { \context { \ChordNames \remove Note_performer } } % Stop chords from sounding in the MIDI
	\midi { }
}
