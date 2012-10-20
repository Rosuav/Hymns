% Keith Getty: Speak, O Lord
\include "Hymnal.ly"

\header
{
	title="Speak, O Lord"
	composer=\markup { \right-column { "Keith Getty and" "Stuart Townend" } }
	poet=\markup { \left-column { \smaller "Copyright 2005 Thankyou Music" \smaller " - private-use transcription only" } }
}

\score {
	<<
		\new ChordNames {
			\set chordChanges = ##t
			\transpose c c,
			\chordmode {
				s1 % Match the dummy rest in the voice line
				% Db -> F; Eb -> G; Ab -> C
				% C  -> F; D  -> G; G  -> C; Em -> Am
				a4:m g c c f2 c4 c f2 c4 c a2:m g
				a4:m g c c f2 c4 c f2 c4 c g:sus4 g c
				c g g c g f2 c4 c g g c c f f g:sus4 g
				a4:m g c c f2 c4 c f2 c4 c g:sus4 g c2
			}
		}
		\new Staff <<
			\set Staff.midiInstrument = "acoustic grand"
			\key c \major
			\time 4/4
			\tempo "" 4 = 90
			\new Voice = "sops" \relative f' {
				r1 % Force vbKar to show the lyrics
				c4 g' e e8 g a4. g8 g4 c8 b a4. g8 g4 c,8 d e4. d8 d2
				c4 g' e e8 g a4. g8 g4 c8 b a4. g8 g4 f8 e d4. c8 c4
				g'8 c b4 d c g8 c, a'4. g8 g4 g8 c b4 d c g8 c, a'4 g8(e) d2
				c4 g' e e8 g a4. g8 g4 c8 b a4. g8 g4 f8 e d4. c8 c2
			}
			\addlyrics { \lyr \lyricmode {
				!Speak, O Lord, as we come to You
				!To re- ceive the food of Your Ho- ly Word.
				!Take Your truth, plant it deep in us;
				!Shape and fa- shion us in Your like- _ ness,
				!That the light of Christ might be seen to- day
				!In our acts of love and our deeds of faith.
				!Speak, O Lord, and ful- fill in us 
				!All Your pur- po- ses for Your glo- _ ry.
			} }
		>>
	>>
	\layout { }
	% \midi { \context { \ChordNameVoice \remove Note_performer } } % Stop chords from sounding in the MIDI
	\midi { }
}
\markup \fill-line {
\column {
\wordwrap-string #"
2. Teach us, Lord, full obedience,

Holy reverence, true humility;

Test our thoughts and our attitudes

In the radiance of Your purity.

Cause our faith to rise; cause our eyes to see

Your majestic love and authority.

Words of pow'r that can never fail—

Let their truth prevail over unbelief.
"
}
\column {
\wordwrap-string #"
3. Speak, O Lord, and renew our minds;

Help us grasp the heights of Your plans for us—

Truths unchanged from the dawn of time

That will echo down through eternity.

And by grace we'll stand on Your promises,

And by faith we'll walk as You walk with us.

Speak, O Lord, till Your church is built

And the earth is filled with Your glory.
"
}

}
