\version "2.24.0"
% Look where yonder sun is gleaming
% Original score, p169 (ish)
% Words: RCH #523
\include "Hymnal.ly"

\header
{
	title="Mirlemont"
	subtitle="Christian, Seek Not Yet Repose"
	poet="Charlotte Elliott"
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
			\key ef \major
			\time 6/8
			\tempo "" 4 = 160
			\new Voice = "sops" \transpose bf ef \relative f' {
				\voiceOne
				bf4 d8 c4 bf8 bf4(d8) c4(bf8) ef2.(a,)
				bf4 d8 c4 bf8 bf4(d8) c4(bf8) g'2.~g4.
				f4 ef8 d4(cs8) cs4(d8) d4. d8(c bf) g'2.(a)
				f4.(ef8 d c d4.) c bf
				\oneVoice
				r
			}
			\addlyrics { \lyr \lyricmode {
				\set stanza = #"1."
				!Christ- ian, seek not yet re- pose
				!Hear thy guard- ian an- gel say,
				!"Thou art in the midst of foes:
				!Watch and pray."
			} }
			\addlyrics { \lyr \lyricmode {
				\set stanza = #"2."
				!Prin- ci- pa- li- ties and powers,
				!Must- 'ring their un- seen ar- ray,
				!Wait for thy un- guard- ed hours:
				!Watch and pray.
			} }
			\new Voice = "alto" \transpose bf ef \relative f' {
				\voiceTwo
				f4 f8 f4 f8 f4. f a2.(f)
				f4 f8 f4 f8 f4. f a2.~a4.
				a4 a8 bf4. bf af af g2.(a)
				f4.(g bf) a bf s
			}
		>>
		\new Staff <<
			\clef bass
			\key ef \major
			\new Voice = "tenor" \transpose bf ef \relative c' {
				\voiceOne
				d4 d8 d4 d8 d4. d f2.(ef)
				d4 d8 d4 d8 d4. d ef2.~ef4.
				f4 f8 f4. f f bf, ef2.(cs)
				d4.(c f) ef <d bf>
				\oneVoice
				r
			}
			\new Voice = "bass" \transpose bf ef \relative c' {
				\voiceTwo
				bf4 bf8 f4 f8 bf4. f c'2.(f,)
				bf4 bf8 f4 f8 bf4. f c'2.~c4.
				f,4 f8 bf4. f d bf ef2.(a,)
				d4.(ef f) f bf, s
			}
		>>
	>>
	\layout { }
	\midi { \context { \ChordNames \remove Note_performer } } % Stop chords from sounding in the MIDI
}

% Additional verses
\markup \fill-line {
\column {
"3. Gird thy heavenly armour on"
"Wear it ever, night and day;"
"Ambushed lies the evil one:"
"Watch and pray."
" "
"4. Hear the victors who o'ercame"
"Still they mark each warrior's way"
"All with one sweet voice exclaim,"
"\"Watch and pray.\""
}
\column {
"5. Hear, above all, hear thy Lord,"
"Him thou lovest to obey"
"Hide within thy heart His word:"
"\"Watch and pray.\""
" "
"6. Watch, as if on that alone"
"Hung the issue of the day"
"Pray that help may be sent down:"
"Watch and pray."
}
}
