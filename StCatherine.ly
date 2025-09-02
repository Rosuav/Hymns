\version "2.24.0"
% St Catherine, as sung with words such as "My hope is built on nothing less" and "Faith of our fathers, holy faith"
\include "Hymnal.ly"

\header
{
	title="My Hope Is Built On Nothing Less"
	subtitle="St Catherine"
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
			\set ChordNames.midiInstrument = "flute"
			\transpose c c,
			\chordmode {
				s2.
				g g a2:m d4 g2. c g a:7 d
				g g a2:m d4 g2. c g a2:7 d4 g2.
				c g d2:sus4 d4 g2. g c d2 d4:7 g2.
			}
		}
		\new Staff <<
			\set Staff.midiInstrument = "acoustic grand"
			\key g \major
			\time 3/4
			\tempo "" 4 = 140
			\new Voice = "sops" \relative f' {
				r2. % To start on an upbeat, put this _before_ the \voiceOne (otherwise it works fine, but prints badly)
				\voiceOne
				b4 a g g(fs) g a(e) fs g2. g4 fs e d2 g4 g(fs) g a2.
				b4 a g g(fs) g a(e) fs g2. g4 fs e d2 b'4 a(b) a g2.
				c4 c c b2 b4 a2 a4 b2. b4 a g e2 g4 a2 a4 g2.
			}
			\addlyrics { \lyr \lyricmode {
				!My hope is built on no- thing less
				!than Je- sus' blood and right- eous- ness;
				!No me- rit of my own I claim,
				!but whol- ly trust in Je- sus' name.
				!On Christ, the so- lid rock, I stand
				!All o- ther ground is sink- ing sand.
			} }
			%{ \addlyrics { \lyr \lyricmode {
				!Faith of our fa- thers! Li- ving still
				!in spite of dun- geon, fire and sword;
				!O how our hearts beat high with joy
				!when- e'er we hear Gods glo- rious Word.
				!Faith of our fa- thers, ho- ly faith!
				!We will be true to you till death.
			} } %}
			\new Voice = "alto" \relative f' {
				s2. % The same rest, but as a spacer so it doesn't print
				\voiceTwo
				d4 d d d2 d4 c2 d4 d2. e4 d c b2 d4 cs2 cs4 d2.
				d4 d d d2 d4 c2 d4 d2. e4 d c b2 d4 e2 fs4 d2.
				g4 g g g2 g4 g2 fs4 g2. b,4 c d c2 e4 d2 c4 b2.
			}
		>>
	>>
	\layout { }
	% \midi { \context { \ChordNames \remove Note_performer } } % Stop chords from sounding in the MIDI
	\midi { }
}
