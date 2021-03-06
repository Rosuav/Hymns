% Hail to the Lord of our Land!
\include "Hymnal.ly"

\header
{
	title="Hail to the Lord of our land"
	subtitle="[words title]"
	% poet=""
	composer="Sir Arthur Sullivan" % circa 1898
	arranger="arr Chris Angelico" % 2014-01-03
	% meter="" ??
	% piece="" ??
}

\score {
	<<
		\new ChordNames {
			\set chordChanges = ##t
			\transpose c c,
			\chordmode {
				d2. a4 d2 d d a d d
				e:m7 g d d e4:m7 g e:m7 g d2 d
				a a a a
				d d b:m7 b:m7
				e:7 e:7 a
				fs:7 b4:sus4 b:m e:7 cs:m
				a2 e:dim7 b:m e:7 a a
				d2. a4 d2 d b:m e4:m7 a d
			}
		}
		\new Staff <<
			\set Staff.midiInstrument = "acoustic grand"
			\key d \major
			\time 4/4
			\tempo "" 4 = 120
			\new Voice = "sops" \relative f' {
				% r1
				\voiceOne
				d'2. a8. a16 fs4 fs8. g16 a2 d4 d8. d16 a4 a4 fs'2. r4
				e2 d4 b a fs8. g16 a2 e'8. d16 b4 e8. d16 b4 a2 r2
				e'2 e4 e e cs8. d16 e2
				fs2 fs4 fs fs d8. e16 fs2
				fs4 fs8. fs16 e4 d cs2
				e2 e4 d d cs8. b16 cs4 r
				e2 e4 d d cs8. b16 a2 r
				d2. a8. a16 fs4 fs8. g16 a2 d4 d8. d16 e4 a d,2. r4
			}
			\addlyrics { \lyr \lyricmode {
				!Hail to the Lord of our land! Phi- lip of Mirle- mont, Hail!
				!Here as thy liege- men we stand, Rea- dy to ans- wer thy call.
				!Heed- less of what may be- fall,
				!Fear- less of heart, for we know,
				!Whi- ther- so- e'er- we go,
				!Thou shalt not fal- ter nor fail.
				!Thou shalt not fal- ter nor fail.
				!Hail to the Lord of our land! Phi- lip of Mirle- mont, Hail!
			} }
			\new Voice = "alto" \relative f' {
				% s1 % The same rest, but as a spacer so it doesn't print
				\voiceTwo
				d'2. a8. a16 fs4 fs8. g16 a2 d4 d8. d16 a4 a4 a2. r4
				g2 g4 g fs d8. e16 fs2 g8. g16 g4 g8. g16 g4 fs2 r2
				a2 a4 a a a8. a16 a2
				fs2 fs4 fs b4 b8. b16 b2
				gs4 gs8. gs16 gs4 gs a2
				as2 fs4 fs gs gs8. gs16 a4 r4
				g2 fs4 fs gs gs8. gs16 a2 r2
				d2. a8. a16 fs4 fs8. g16 a2 fs4 fs8. fs16 b4 a d2. r4
			}
		>>
		\new Staff <<
			\clef bass
			\key d \major
			\new Voice = "tenor" \relative c' {
				% r1
				\voiceOne
				d2. a8. a16 fs4 fs8. g16 a2 d4 d8. d16 a4 a4 d2. r4
				b2 b4 b d a8. a16 d2 b8. b16 e4 b8. b16 e4 a,2 r2
				cs2 cs4 cs cs a8. b16 cs2
				d2 d4 d d b8. cs16 d2
				d4 d8. d16 cs4 b cs2
				cs2 b4 b e e8. e16 e4 r4
				cs2 b4 b e e8. d16 cs2 r2
				d2. a8. a16 fs4 fs8. g16 a2 d4 d8. d16 d4 cs d2 r2
			}
			\new Voice = "bass" \relative c' {
				% s1
				\voiceTwo
				d2. a8. a16 fs4 fs8. g16 a2 d4 d8. d16 a4 a4 d,2. r4
				d2 d4 d d d8. d16 d2 d8. d16 d4 d8. d16 d4 d2 r2
				a'2 a4 a a a,8. a16 a'2
				a2 a4 a a a,8. a16 a'2
				e4 e8. e16 e4 e a2
				fs2 b4 b e,4 e8. e16 a4 r4
				as2 b4 b e,4 e8. e16 a2 r2
				d2. a8. a16 fs4 fs8. g16 a2 b4 b8. b16 g4 a d,2 r2
			}
		>>
	>>
	\layout { }
	\midi { \context { \ChordNameVoice \remove Note_performer } } % Stop chords from sounding in the MIDI
}
