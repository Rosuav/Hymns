% Look where yonder sun is gleaming
% Original score, p169 (ish)
\include "Hymnal.ly"

\header
{
	title="Mirlemont"
	subtitle="[words title]"
	% poet=""
	composer="Sir Arthur Sullivan" % circa 1898
	arranger="arr Chris Angelico" % 2012-02-05
	% meter="" ??
	% piece="" ??
}

\score {
	<<
		\new ChordNames {
			\set chordChanges = ##t
			\transpose bf ef,
			\chordmode {
				bf4. bf bf bf f:7 f:7 f:7 f:7
				bf bf bf bf f:7 f:7 f:7
				f:7 bf bf:m d:dim d:dim ef ef a:7 a:7
				d:m c:m bf f:7 bf
			}
		}
		\new Staff <<
			\set Staff.midiInstrument = "acoustic grand"
			\key bf \major
			\time 6/8
			\tempo "" 4 = 160
			\new Voice = "sops" \transpose bf ef \relative f' {
				\voiceOne
				bf4 d8 c4 bf8 bf4(d8) c4(bf8) ef2. a,
				bf4 d8 c4 bf8 bf4(d8) c4(bf8) g'2.~g4.
				f4(ef8) d4(cs8) cs4 d8 d4. d8(c) bf g'2.(a)
				f4. ef8(d) c d4. c bf
				\oneVoice
				r
			}
			\addlyrics { \lyr \lyricmode {
				!Look where yon- der sun is glea- ming
				!Day is dawn- ing, night is past!
				!Hail, hail to the lord of our land!
				!Phi- lip of Mirle- mont, hail!
			} }
			\new Voice = "alto" \transpose bf ef \relative f' {
				\voiceTwo
				f4 f8 f4 f8 f4. f a2. f
				f4 f8 f4 f8 f4. f a2.~a4.
				a4. bf bf4 bf8 af4. af4 af8 g2.(a)
				f4. g4 g8 bf4. a bf s
			}
		>>
		\new Staff <<
			\clef bass
			\key bf \major
			\new Voice = "tenor" \transpose bf ef \relative c' {
				\voiceOne
				d4 d8 d4 d8 d4. d f2. ef
				d4 d8 d4 d8 d4. d ef2.~ef4.
				f4. f f4 f8 f4. bf,4 bf8 ef2.(cs)
				d4. c4 c8 f4. ef <d bf>
				\oneVoice
				r
			}
			\new Voice = "bass" \transpose bf ef \relative c' {
				\voiceTwo
				bf4 bf8 f4 f8 bf4. f c'2. f,
				bf4 bf8 f4 f8 bf4. f c'2.~c4.
				f,4. bf f4 f8 d4. bf4 bf8 ef2.(a,)
				d4. ef4 ef8 f4. f bf, s
			}
		>>
	>>
	\layout { }
	\midi { \context { \ChordNameVoice \remove Note_performer } } % Stop chords from sounding in the MIDI
}
