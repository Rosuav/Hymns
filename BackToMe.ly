\version "2.24.0"
% Yet it ever comes back to me
% Words taken from http://www.cyberhymnal.org/htm/i/s/isingthe.htm - s/be out of copyright - not found in RCH though
\include "Hymnal.ly"

\header
{
	title="Back To Me"
	subtitle="I sing the mighty power of God"
	poet="Isaac Watts"
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
				s2 e
				b:7 b:7 e e b:7 b:7 e
				e b b e4 e:7 c2 c
				e2 b e a e fs:m e
			}
		}
		\new Staff <<
			\set Staff.midiInstrument = "acoustic grand"
			\key e \major
			\numericTimeSignature
			\time 4/4
			\tempo "" 4 = 140
			\new Voice = "sops" \relative f' {
				r2.
				\voiceOne
				gs8(e) ds4 fs fs e8(ds) e4 gs gs
				e fs a a gs8(fs) gs4(b2)
				gs4 fs a a gs8(fs)
				\time 2/4
				gs4 b
				\time 4/4
				e2.
				e,8(fs) gs(a) gs4 fs b, b'2.
				a4 gs8(fs) e4 fs gs e2.
				\oneVoice
				r4
			}
			\addlyrics { \lyr \lyricmode {
				!I sing the migh- ty power of God,
				!that made the moun- tains rise,
				!That spread the flow- ing seas a- broad,
				!and built the lof- ty skies,
				!and built the lof- ty skies.
			} }
			\new Voice = "alto" \relative f' {
				s2.
				\voiceTwo
				gs8 e b4 b b b b b b e ds ds ds ds e2.
				e4 ds ds ds ds e gs g2. e4 e e ds b e2 e
				e4 e cs b b2.
				s4
			}
		>>
		\new Staff <<
			\clef bass
			\key e \major
			\new Voice = "tenor" \relative c' {
				r2.
				\voiceOne
				b4 a a a a gs gs gs gs a a a a gs2.
				b4 b b b b b e e2. e4 b b b b b2 cs
				b4 b a a gs2.
				\oneVoice
				r4
			}
			\new Voice = "bass" \relative c' {
				s2.
				\voiceTwo
				gs4 b, b b b b b b b b b b b b2.
				b4 b b b b e d c2. c4 b b a a gs2 fs
				b4 b b b e2.
				s4
			}
		>>
	>>
	\layout { }
	\midi { \context { \ChordNames \remove Note_performer } } % Stop chords from sounding in the MIDI
	% \midi { }
}

% Additional verses
\markup \fill-line {
\column {
"1. I sing the mighty power of God"
"that made the mountains rise,"
"That spread the flowing seas abroad,"
"and built the lofty skies."
" "
"2. I sing the wisdom that ordained"
"the sun to rule the day;"
"The moon shines full at God’s command,"
"and all the stars obey."
" "
"3. I sing the goodness of the Lord,"
"who filled the earth with food,"
"Who formed the creatures through the Word,"
"and then pronounced them good."
" "
}
\column {
"4. Lord, how Thy wonders are displayed,"
"where’er I turn my eye,"
"If I survey the ground I tread,"
"or gaze upon the sky."
" "
"5. There's not a plant or flower below"
"but makes Thy glories known,"
"And clouds arise, and tempests blow"
"by order from Thy throne;"
" "
"6. While all that borrows life from Thee"
"is ever in Thy care;"
"And everywhere that we can be,"
"Thou, God art present there."
" "
}
}
