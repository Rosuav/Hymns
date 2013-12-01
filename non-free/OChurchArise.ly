% Keith Getty/Stuart Townend: O Church, Arise!
\include "../Hymnal.ly"

\header
{
	title="O Church, Arise"
	composer=\markup { \right-column { "Keith Getty and" "Stuart Townend" } }
	poet=\markup { \left-column { \smaller "Copyright 2005 Thankyou Music" \smaller " - private-use transcription only" } }
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
			\key d \major
			\time 3/2
			\tempo "" 4 = 144
			\new Voice = "sops" \relative f' {
				r2.
				\voiceOne
				a,4 d4. cs8 d2. a4 d fs g4. fs8 e2. fs8 g a4 d, g fs e2 d2.
				a4 d4. cs8 d2. a4 d fs g4. fs8 e2. fs8 g a4 d, g fs e2 d2.
				a'4 d cs b2. b4 a g a2. a4 d cs b d a2 fs2 e2.
				a,4 d4. cs8 d2. a4 d fs g4. fs8 e2. fs8 g a4 d, g fs e2 d2.
			}
			\addlyrics { \lyr \lyricmode {
				!
			} }
			\new Voice = "alto" \relative f' {
				s2. % The same rest, but as a spacer so it doesn't print
				\voiceTwo
			}
		>>
		\new Staff <<
			\clef bass
			\key c \major
			\new Voice = "tenor" \relative c' {
				r2.
				\voiceOne
			}
			\new Voice = "bass" \relative c' {
				s2.
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
"2. Lorem ipsum"
"dolor sit"
"amet"
" "
"3. "
" "
}
\column {
"4. "
" "
" "
}
}
% Odd verse in the middle of the line (drop this section if even verse count)
\markup \fill-line { \column {
" "
"5. "
}}
