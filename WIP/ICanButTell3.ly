% Laine "I can but tell I knelt and prayed"
\include "../Hymnal.ly"

\header
{
	title="I Can But Tell"
	subtitle="Rock of Ages, Cleft for Me"
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
			\transpose f ef,
			\chordmode {
				s2
				f4 c:7 f bf
			}
		}
		\new Staff <<
			\set Staff.midiInstrument = "acoustic grand"
			\key ef \major
			\time 2/4
			\tempo "" 4 = 52
			\new Voice = "sops" \transpose f ef \relative f' {
				\voiceOne
				a8 g16(f) bf8 g c a d(
				f) f16(e) d(c) e8 d d8. e16 c4
				a8 a16(bf) c8 c f, g16(a) bf4
				bf8 g a f16(ef') ef8 d d4
				d,8 e fs8 a g16(fs) g8 d'(
				d,) e16(d) c8 c' a g16(a f a g8.) f16 f2
			}
			\addlyrics { \lyr \lyricmode {
				!Rock of A- ges, cleft for me,
				!Let me hide my- self in Thee;
				!Let the wa- ter and the blood,
				!From Thy wound- ed side which flowed,
				!Be of sin the dou- ble cure;
				!Save me from its guilt and power.
			} }
			\addlyrics { \lyr \lyricmode {
				!Not the la- bor of my hands
				!Can ful- fill Thy law's de- mands;
				!Could my zeal no re- spite know,
				!Could my tears for- e- ver flow,
				!All for sin could not a- tone;
				!Thou must save, and Thou a- lone.
			} }
			\new Voice = "alto" \transpose f ef \relative f' {
				\voiceTwo
			}
		>>
		\new Staff <<
			\clef bass
			\key ef \major
			\new Voice = "tenor" \transpose f ef \relative c' {
				r2 r r r r r r r r r r r r % Filler to force the staff to be printed
				\voiceOne
			}
			\new Voice = "bass" \transpose f ef \relative c' {
				\voiceTwo
			}
		>>
	>>
	\layout { }
	\midi { \context { \ChordNameVoice \remove Note_performer } } % Stop chords from sounding in the MIDI
}

% Additional verses
\markup \fill-line {
\column {
"3. Nothing in my hand I bring,"
"Simply to the cross I cling;"
"Naked, come to Thee for dress;"
"Helpless look to Thee for grace;"
"Foul, I to the fountain fly;"
"Wash me, Savior, or I die."
}
\column {
"4. While I draw this fleeting breath,"
"When mine eyes shall close in death,"
"When I soar to worlds unknown,"
"See Thee on Thy judgment throne,"
"Rock of Ages, cleft for me,"
"Let me hide myself in Thee."
}
}
