% Oh, turn thine eyes away - chorus words (orig score p77)
\include "Hymnal.ly"

\header
{
	title="Turn Thine Eyes"
	subtitle="[words title]"
	% poet=""
	composer="Sir Arthur Sullivan" % circa 1898
	arranger="arr Chris Angelico" % 2012-03-14
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
			\key df \major
			\time 6/8
			\tempo "" 4 = 120
			\new Voice = "sops" \relative f' {
				r4 r8 r4 % To start on an upbeat, put this _before_ the \voiceOne (otherwise it works fine, but prints badly)
				\voiceOne
				af8 d,4 ef8 f4 gf8 g4 af8 bf4 af8 af4. g gf
				\oneVoice
				r8 r
				\voiceOne
				af d,4(ef8~ef f) gf g4(af8 bf c) af af4. g af
				af8 af af df4.~df4 f,8 gf4.~gf4 gf8 f4.(af4) cf8 bf4.
				% bf8 r4
				% This is where the sops soar a bit. Might need to tweak.
				% ef df df4(c8~c) ff(ef) ef4(d8~d) ef(e) f4. gf, f2.
				% r r
				% % c4. bf af a4(bf8) af4. gf f2.
				% r2. r r r
				% r4 r
				% Dram
				\transpose df df { \relative f'' { c4. df af df df c } }
				% Back to Beauty Stone with the Ab7 chord "no more"
				gf4. f2.
			}
			%{
			\addlyrics { \lyr \lyricmode {
				!Oh, turn thine eyes a- way,
				!Let not her lure thee on
				!Tho' fair, tho' fair she seems to- day
				!Bid her be- gone!
				!Tho' fair she seems to- day
				% !Turn thine eyes a- way, and gaze no more!
				![it needn't be a hymn one]
				no more!
			} }
			%}
			\new Voice = "alto" \relative f' {
				s4 s8 s4 % The same rest, but as a spacer so it doesn't print
				\voiceTwo
				af,8 c4.~c4 c8 c4.~c4 ef8 af4.(df, af)
				s8 s
				af c4.~c4 c8 c4.~c4 c8 af'4. df, gf
				gf8 gf gf f4.~f4 df8 ef4.~ef4
				ef8 df4.(f4) f8 af4.
				% gf8 r4
				% r r
				% ef4.(e f) gf4(g8) f4. c df2.
				% r4 r
				% Kal: all A flat
				\transpose df df { \relative f' { af4. af af af af af } }
				% BS
				c,4. df2.
			}
		>>
		\new Staff <<
			\clef bass
			\key df \major
			\new Voice = "tenor" \relative c' {
				r4 r8 r4
				\voiceOne
				af8 af4.~af4 af8 af4.~af4 af8 af4.(bf ef)
				\oneVoice
				r8 r
				\voiceOne
				af,8 af4.~af4 af8 af4.~af4 af8 af4. bf c
				c8 c c df4.~df4 df8 df4.(c4) c8 cf4(af8 df,4)
				df'8 d4.
				% ef8 r4
				% \oneVoice
				% r8 r
				% \voiceOne
				% a,4.(bf cf) c4(df8) df4. af af2.
				% r4 r
				\transpose df df { \relative f' { c4. df f df ef c } }
				% BS
				af4. af2.
			}
			\new Voice = "bass" \relative c' {
				s4 s8 s4
				\voiceTwo
				af8 gf4.~gf4 gf8 gf4.~gf4 gf8 f4.(ff ef)
				s8 s
				af gf4.~gf4 gf8 gf4.~gf4 gf8 f4. ff ef
				af8 af af df4.~df4 df,8 df4.~df4 df8 df4.(df4)
				df8 gf4.
				% gf8 r4
				% s8 s
				% gf4.(g af) a af af, df2.
				% r4 r
				\transpose df df { \relative f { ef4. f df f df ef } }
				% BS
				af,4. df2.
			}
		>>
	>>
	\layout { }
	\midi { \context { \ChordNameVoice \remove Note_performer } } % Stop chords from sounding in the MIDI
}
