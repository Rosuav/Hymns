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
				gs16(e) ds8 fs fs e16(ds) e8 gs gs
				e fs a a gs16(fs) gs8(b4)
				gs8 fs a a gs16(fs) gs8 b e
				e,16(fs) gs(a) gs8 fs b, b'4.
				a8 gs16(fs) e8 fs gs e4.
				\oneVoice
				r8
			}
			\addlyrics { \lyr \lyricmode {
				!I sing the migh- ty power of God,
				!that made the moun- tains rise,
				!That spread the flow- ing seas a- broad,
				!and built the lof- ty skies,
				!and built the lof- ty skies.
			} }
			\new Voice = "alto" \relative f' {
				s4.
				\voiceTwo
				gs16 e b8 b b b b b b e ds ds ds ds e4.
				e8 ds ds ds ds e gs g e e e ds b e4 e
				e8 e cs b b4.
				s8
			}
		>>
		\new Staff <<
			\clef bass
			\key e \major
			\new Voice = "tenor" \relative c' {
				r4.
				\voiceOne
				b8 a a a a gs gs gs gs a a a a gs4.
				b8 b b b b b e e e b b b b b4 cs
				b8 b a a gs4.
				\oneVoice
				r8
			}
			\new Voice = "bass" \relative c' {
				s4.
				\voiceTwo
				gs8 b, b b b b b b b b b b b b4.
				b8 b b b b e d c c b b a a gs4 fs
				b8 b b b e4.
				s8
			}
		>>
	>>
	\layout { }
	\midi { \context { \ChordNameVoice \remove Note_performer } } % Stop chords from sounding in the MIDI
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
