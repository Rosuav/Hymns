\version "2.24.0"
% Keith Getty/Stuart Townend: The Power of the Cross
\include "../Hymnal.ly"

\header
{
	title="The Power of the Cross"
	subtitle="(Oh, to See the Dawn)"
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
				f4 g c c c d:m c c a:m c c c d:m c g g
				f4 g c c c d:m c c a:m c c c g:sus4 g:sus4 g
				% Chorus
				c f f f g c c c c f f f g c c c
				c f f f d g g c d:m g g c2
			}
		}
		\new Staff <<
			\set Staff.midiInstrument = "acoustic grand"
			\key c \major
			\time 4/4
			\tempo "" 4 = 62
			\new Voice = "sops" \relative f' {
				r1 % Force vbKar to show the lyrics
				c8. d16 d8. e16 e4 r e8. f16 f8. g16 g4 r
				a g8 f g4 c, f e8.(d16) d4 r
				c8. d16 d8. e16 e2 e8. f16 f8. g16 g4 r
				a4 g8 f g4 e d2.
				% Chorus
				g8. a16 a2 r4 d,8. g16 e2 r4
				g8. a16 a2 r4 d,8. g16 e2 r4
				g8. a16 a2 r4 a8. b16 b4
				d4 c8 g f e d4. c8 c2
			}
			\addlyrics { \lyr \lyricmode {
				!Oh, to see the dawn
				!Of the dark- est day:
				!Christ on the road to Cal- va- ry.
				!Tried by sin- ful men,
				!Torn and bea- ten, then
				!Nailed to a cross of wood.
				% Chorus
				!This, the pow'r of the cross:
				!Christ be- came sin for us;
				!Took the blame, bore the wrath
				!We stand for- gi- ven at the cross.
			} }
			\addlyrics { \lyr \lyricmode {
				!Oh, to see the pain
				!Writ- ten on Your face,
				!Bear- ing the awe- some weight of sin.
				!Ev'- ry bit- ter thought,
				!Ev'- ry e- vil deed
				!Crown- ing Your blood- stained brow. 
				% Chorus
				!This, the pow'r of the cross:
				!Christ be- came sin for us;
				!Took the blame, bore the wrath
				!We stand for- gi- ven at the cross.
			} }
			\addlyrics { \lyr \lyricmode {
				!Now the day- light flees;
				!Now the ground be- neath
				!Quakes as its Ma- ker bows His head.
				!Cur- tain torn in two,
				!Dead are raised to life;
				!"Fin- ished!" the vic- t'ry cry.
				% Chorus
				!This, the pow'r of the cross:
				!Christ be- came sin for us;
				!Took the blame, bore the wrath
				!We stand for- gi- ven at the cross.
			} }
			\addlyrics { \lyr \lyricmode {
				!Oh, to see my name
				!Writ- ten in the wounds,
				!For through Your suf- f'ring I am free.
				!Death is crushed to death;
				!Life is mine to live,
				!Won through Your self- less love. 
				% Last time chorus
				!This, the pow'r of the cross:
				!Son of God, slain for us.
				!What a love! What a cost! 
				!We stand for- gi- ven at the cross.
			} }
		>>
	>>
	\layout { }
	% \midi { \context { \ChordNames \remove Note_performer } } % Stop chords from sounding in the MIDI
	\midi { }
}
