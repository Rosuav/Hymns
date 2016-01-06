% The Dormouse's song :)
\include "Hymnal.ly"

\header
{
	title="Dormouse"
	% subtitle="[words title]"
	% poet=""
	composer="Sir Arthur Sullivan" % circa 1892
	arranger="arr Chris Angelico" % 2016-01-07
	% meter="" ??
	% piece="" ??
}

\score {
	<<
		\new ChordNames {
			\set chordChanges = ##t
			\transpose c c,
			% \set ChordNames.midiInstrument = "flute"
			\chordmode {
				s2..
				af8 bf4:m bf:m af:7 af:7 c:m af:7 bf:m bf:m
				bf:m bf:m c:m7 af:7 c:m af:7 bf:m
				bf:m7 a:7 a:7 df df c:m c:m df
			}
		}
		\new Staff <<
			\set Staff.midiInstrument = "acoustic grand"
			\key bf \minor
			\time 4/4
			\tempo "" 4 = 80
			\new Voice = "melody" \relative f' {
				r2..
				\voiceOne
				af8 bf bf4 bf8 bf af4 af8 g4 af8 af f4.
				f8 bf4 bf8 bf8 bf4 af g af8 af f4.
				af8 df4 df8 df df af4
				af8 ef'4 \tuplet 3/2 { af,8 bf af } df2
			}
			\addlyrics { \lyr \lyricmode {
				%{
				!Oh, fa- ther, I can- not!
				!But daugh- ter, thou must!
				!For he has a house,
				!And we haven't a crust.
				!But who is the dor- mouse,
				!And who, who is the snail?
				%}
			} }
			\new Voice = "alto" \relative f' {
				s2..
				\voiceTwo
				c8 df df4 df8 c8 c4 c8 c4 c8 c8 df4.
				df8 df4 df8 df c4 c c c8 c df4.
				f8 e4 e8 e f f4
				f8 gf4 \tuplet 3/2 { gf8 gf gf } f2
			}
		>>
		\new Staff <<
			\clef bass
			\key bf \minor
			\new Voice = "tenor" \relative c' {
				r2..
				% Where this would double Dorothy's melody line, it instead takes the chorus soprano line.
				\voiceOne
				gf8 f f4 f8 gf8 gf4 gf8 gf4 gf8 gf8 f4.
				f8 f4 f8 f gf4 gf gf gf8 gf f4.
				af8 g4 g8 g af af4
				df8 c4 \tuplet 3/2 { c8 c c } df2
			}
			\new Voice = "bass" \relative c' {
				s2..
				\voiceTwo
				af,8 df8 df4 af8 ef'8 ef4 af,8 ef'4 af,8 af df4.
				df8 df4 af8 af ef'4 af, ef' af,8 af df4.
				df8 bff4 bff8 bff f f4
				af8 af4 \tuplet 3/2 { af8 af af } df2
			}
		>>
	>>
	\layout { }
	\midi { \context { \ChordNameVoice \remove Note_performer } } % Stop chords from sounding in the MIDI
	% \midi { } % TODO: Fix chords
}
