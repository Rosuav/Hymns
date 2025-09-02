\version "2.24.0"
\include "../Hymnal.ly"

\header
{
	title="Jesus, Thank You"
	subtitle="The Mystery of the Cross"
	poet="Words and Music: Pat Sczebel"
	% composer=""
	% arranger=""
	% meter="" ??
	% piece="" ??
}

\score {
	<<
		\new ChordNames {
			\set chordChanges = ##t
			\transpose c c,
			\chordmode {
				s1
				e:m7 c:2 g:/b d2:sus4 d
				c1:2 g:/b d:sus4 d
				e:m7  c:2 g:/b d2:sus4 d
				a1:m7 g:/b d:sus4 d
				
				g d:2 e:m7 c:2
				g d:2 e:m7 c:2
				e:m7 d:/fs g c:2 d:sus4 d g
			}
		}
		\new Staff <<
			\set Staff.midiInstrument = "Flute"
			\key g \major
			\time 4/4
			\numericTimeSignature
			\tempo "" 4 = 130
			\new Voice = "sops" \relative f' {
				r2.
				\voiceOne
				g8 fs8~fs4 e8 e~e4 fs8 g~g4 fs8 e d4 r4 d2~d4 b8 a~a2
				r4 r8 g e'4 e8 e~e4 d8 d~d2 b4 d~d2 r r1
				e4 e8 e~e4 fs8 g~g4 fs8 \slurDashed e8~e4( d) d2~d8 b4 a8~a2 \slurSolid
				r4 r8 g c4 c8 c~c4 d8 e~e r d b~b4 d~d d2 r4 s2.
				
				d4 g2 r4 d a' a8 g~g fs4 g8~g4
				r g fs e4.( d8) d4 r8
				d d4 g8 g~g4 d8 a'~a a4 g8~g fs4 g8~g4
				r g fs e4.( d8) d4 r
				g g8 g~g a4 a8~a2 r4 d, b' c8 b~b a4 a8~a g~g
				r c4 b a1(~a2. g4) g1
				
			}
			\addlyrics { \lyr \lyricmode {
			\set stanza = #"1. "
				!The mys- tery of the cross I can- not com- pre- hend,
				!the ag- o- nies of Cal- va- ry.
				!You, the per- fect Ho- ly One, crushed Your Son,
				!who drank the bit- ter cup re- served for me.
				
				!Your blood has washed a- way my sin:
				!Je- sus, thank You.
				!The Fa- ther's wrath com- plete- ly sa- tis- fied:
				!Je- sus, thank You.
				!Once Your e- ne- my, now sea- ted at Your ta- ble:
				!Je- sus, thank You.
			} }
			
			\addlyrics { \lyr \lyricmode {
			\set stanza = #"2. "
				!_ By Your per- fect sac- ri- fice I've been brought near.
				!Your e- ne- my You've made Your friend.
				!Pour- ing out the rich- es \set ignoreMelismata = ##t of \unset ignoreMelismata Your glo- rious grace,
				!Your mer- cy and Your kind- ness know no end.
			} }

			\new Voice = "accomp2" \relative c' {
				s1
				\voiceTwo
				<b g> d g, g2 fs
				g1 g g <a fs>
				<b g> d g, g2 fs
				a1 g g2 g <fs d'> r4
				
				s b2 s d1 b4
				r b a g1
				b2. s8 d~d1 b4
				r b a g1
				b2. r8 d~d2 s2 d2. r8 d~d2
				e <g d>1 <fs d>2. r4 <d b>1
			}
		>>
		\new Staff <<
			\clef bass
			\key g \major
			\numericTimeSignature
			\new Voice = "tenor" \relative c {
				r1
				e, c' b d
				c b d d,2 d'
				e, e4 b' c1 b d2 d,
				a' a b b d1
				
				d4 d d d g,2 g d' d e e4 d c1
				g2 g d' d e e4 d c1
				e,2 e fs fs g g c1 d4 d d d d, d d d g1
			}
		>>
	>>
	\layout { }
	% \midi { \context { \ChordNames \remove Note_performer } } % Stop chords from sounding in the MIDI
	\midi { }
}
\paper
	{
	oddFooterMarkup=\markup { \fill-line { \smaller "© Copyright 2003 Sovereign Grace Worship (ASCAP) - used under licence CCLI 242927 - rendered by GNU Lilypond" } }
	}
