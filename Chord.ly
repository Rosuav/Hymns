% The Lost Chord, simplified arrangement for chord and melody
\version "2.24.1"
\include "Hymnal.ly"

\header
{
	title="The Lost Chord"
	composer="Sir Arthur Seymour Sullivan"
}

\score {
	<<
		\new ChordNames {
			\set chordChanges = ##t
			\transpose c c,
			\chordmode {
				% Use "\parenthesize bf" to put the chord name in parens.
				% Only applicable if the chord changed at that point.
				% CJA 20250902: Using parens for uncertain notation, may or may not need these ones.
				% Clean this up later and use the parens correctly.
				f1 bf2 g4:m \parenthesize g:m7 c2. c4:7 f2 g:m f g:m c f c1:7 f/bf f
				% Verse one
				f1 d:m f2 c:7 f1 bf2 bf f bf f g c
				c \parenthesize d:m c f4 c c2 fs:7 a:m a:m bf4 c
				f2 a:m bf f f g:m bf ef bf d:m f c:7 f1
				bf2 g:m c:7 a:m f g:m7 f1
				% Verse two
				f1 d:m f2 c:7 f2. f4:7 bf2 bf f a:m f g c c
				\parenthesize g a:m b:dim c \parenthesize e e a:m
				bf \parenthesize d:m a:m d:m f4 bf f2 c:7 f1
				\parenthesize d2:m \parenthesize f g:7 f f:7 c:7 d:m
				f:7 d:m c g1 e2 e a1
				% Sought but I seek it vainly
				ef:7 d:m e a:7 d2 d:m a1:7 d2:m f
				c4:7 bf c f g:m a:m bf c:7
				% It may be that Death's bright angel
				f1 d:m f2 c:7 f1 bf f2 c d:m g:7 c
				c a:m a:m d:m d:m g:m g:m c2.
				\parenthesize f4:7 bf \parenthesize bf:dim7
				f c:7 f2:7 bf f1 d2:m7 c f
				f:7 f4:7 bf f bf f1 f
			}
		}
		\new Staff <<
			\set Staff.midiInstrument = "acoustic grand"
			\key f \major
			\time 4/4
			\tempo "" 4 = 120
			{
				\new Voice = "accomp" \relative f' {
					r4 c f e d d g f c' bf a c
					f e d c c a g f e g a c bf a g e f2 a,4 g f'1
				}
				\new Voice = "melody" \relative f' {
					% Verse one
					f4 f8 f8 f4 f8 f8 f4 f4 s4 f8 f f4 f8 f g4. g8 a2
					r4 f8 f bf4. bf8 bf4 bf a2 g f4 g8 a g4 f e2
					r4 c d ds e f8 f a4 g r e fs gs8 gs a4 b c2
					r4 c,8 c a'4 bf c a f g a bf a g8 f g4 e f2
					g4 g bf2 a4 f f8( e f d) g2 f4
				}
				\addlyrics { \lyr \lyricmode {
					!Sea- ted one day at the or- gan,
					!I was wea- ry and ill at ease,
					!And my fin- gers wan- der'd i- dly
					!O- ver the noi- sy keys;
					!I know not what I was play- ing,
					!Or what I was dream- ing then,
					!But I struck one chord of mu- sic
					!like the sound of a great A- men,
					!Like the sound of a great A- men.
				} }
				\new Voice = "accomp" \relative f' {
					c f e d d' g f e d c bf a f g e f2.
				}
				\new Voice = "melody" \relative f' {
					% Verse two
					c4 f f8 f f4 f f f r f8 f f4 f8 f g4. g8 a2 r4
					f8 f bf4 bf8 bf bf4 bf a2 g4 g8 g f4 g8( a) g8. g16 f4 e2 r4
					c4 d8 d ds4 e f a g r e fs gs8 gs a4 b c2.
					c,4 a'8 a bf4 c a f( g) a bf a g8( f) g4 e f2 r4
					f f e8 e e4 f e d r c8 c bf'2 bf4. bf8 a2 r4
					f f e8 e e4 f8 f e4 d r d d cs8 d e4. d8 cs2 r4
					a'8 a bf4 bf8 bf bf4. bf8 bf4 a r a gs gs gs4. gs8 g2 r4
					g fs a8 a d4 a8 f f4 e r e d4. d8 d4 d4 e4
					% Ideally, that last e4 should be e2. but only allocated
					% enough space for an e4, to allow the next voice to come in.
				}
				\addlyrics { \lyr \lyricmode {
					!It flood- ed the crim- son twi- light,
					!Like the close of an An- gel's psalm,
					!And it lay on my fe- ver'd spi- rit
					!With a touch of in- fi- nite calm;
					!It qui- et- ed pain and sor- row,
					!Like love o- ver- com- ing strife,
					!It seem'd the har- mon- ious e- cho
					!From our dis- cor- dant life.
					!It link'd all per- plex- ed mean- ings,
					!In- to one per- fect peace,
					!And trem- bled a- way in- to si- lence,
					!as if it were loth to cease;
					!I have sought, but I seek it vain- ly,
					!That one lost chord di- vine,
					!Which came from the soul of the or- gan,
					!And en- ter'd in- to mine.
				} }
				\new Voice = "accomp" \relative f' {
					d8 d e e f f g g a a bf bf
				}
				\new Voice = "melody" \relative f' {
					c4 f f8 f f4 f f f2
					f4 f f8 f g4. g8 a2 r4
					f bf bf8 bf bf4 bf8 bf a2
					g4 g f g8( a) g4 f e2 r4
					c c' c8 c a4 a f2 d4
					d bf' bf8 bf g4 g c,2.
					f4 f g8 g a4 c8 c f2
					f,4 bf a2. a4 f2 g2 f4
				}
				\addlyrics { \lyr \lyricmode {
					!It may be that Death's bright An- gel
					!Will speak in that chord a- gain;
					!It may be that on- ly in Heav'n,
					!I shall hear that grand A- men.
					!It may be that Death's bright An- gel
					!Will speak in that chord a- gain;
					!It may be that on- ly in Heav'n,
					!I shall hear that grand A- men.
				} }
				\new Voice = "accomp" \relative f' {
					a4 g a f bf c d f2 a,4 g a
				}
			}
		>>
	>>
	\layout { }
	\midi { }
	% \midi { \context { \ChordNames \remove Note_performer } } % Stop chords from sounding in the MIDI
}
