% Music from Revised Church Hymnal, words from Rejoice! Hymnal.
\include "Hymnal.ly"

\header
{
	title="God Moves in a Mysterious Way"
	subtitle="Martyrdom"
	poet="William Cowper, 1731-1800"
	composer="Hugh Wilson, 1766-1824"
	% arranger=""
	% meter=""
	% piece=""
	copyright=\markup { \smaller "Copyright 1987 Presbyterian Church of Australia - used under licence CCLI 242927" }
}

\score {
	<<
		\new ChordNames {
			\set chordChanges = ##t
			\transpose c c,
			\chordmode {
			s1 g4 c g2 e4:m d:7 g2
			b:m e:m d1
			g2 g:7 c d
			g4 c g d:7 g1
			}
		}
		\new Staff <<
			\set Staff.midiInstrument = "acoustic grand"
			\key g \major
			\time 4/4
			\tempo "" 4 = 120
			\new Voice = "sops" \relative f' {
				r2.
				\voiceOne
				d4 g e d g8( a) b4 a g
				b d b8( a) g4 b a2.
				d4 b a g b c b a
				b d,8( e) g( a) b4 a g1
			}
			\addlyrics { \lyr \lyricmode {
			\set stanza = #"1. "
				!God moves in a mys- ter- ious way,
				!His won- ders to per- form;
				!He plants His foot- steps on the sea,
				!and rides up- on the storm.
			} }
			\addlyrics { \lyr \lyricmode {
			\set stanza = #"2. "
				!Deep in un- fa- thom- a- ble mines
				!of ne- ver- fail- ing skill
				!He trea- sures up His bright de- signs,
				!and works His sov- 'reign will.
			} }
			\addlyrics { \lyr \lyricmode {
			\set stanza = #"3. "
				!You fear- ful saints, fresh cour- age take;
				!the clouds you so much dread
				!are filled with mer- cy, and shall break
				!in bless- ings on your head.
			} }
			\addlyrics { \lyr \lyricmode {
			\set stanza = #"4. "
				!Judge not the Lord by fee- ble sense,
				!but trust Him for His grace;
				!be- hind a frown- ing pro- vi- dence
				!faith sees a smil- ing face.
			} }
			\addlyrics { \lyr \lyricmode {
			\set stanza = #"5. "
				!His pur- pos- es will ri- pen fast,
				!un- fold- ing ev- 'ry hour;
				!the bud may have a bit- ter taste,
				!but sweet will be the flower.
			} }
			\addlyrics { \lyr \lyricmode {
			\set stanza = #"6. "
				!Blind un- be- ief is sure to err,
				!and scan His work in vain;
				!God is His own in- ter- pre- ter,
				!and He will make it plain.
			} }
			\new Voice = "alto" \relative f' {
				s2. % The same rest, but as a spacer so it doesn't print
				\voiceTwo
				b,4 d c b g' g fs g
				d d fs g d d2.
				a'4 g fs e f e8( fs) g4 fs
				g d8( c) b( e) d4 d8( c) b1
			}
		>>
		\new Staff <<
			\clef bass
			\key g \major
			\new Voice = "tenor" \relative c' {
				r2.
				\voiceOne
				g4 d e8( fs) g4 b8( c) d4 d8( c) b4
				g a d b g fs2.
				d'4 d d b d g,8( a) b( c) d4
				d g, g g fs g1
			}
			\new Voice = "bass" \relative c' {
				s2.
				\voiceTwo
				g,4 b c g e' d d g,
				g' fs d e b d2.
				fs4 g d e d c g d'
				g, b8( c) e( c) d4 d g,1
			}
		>>
	>>
	\layout { }
	\midi { \context { \ChordNameVoice \remove Note_performer } } % Stop chords from sounding in the MIDI
}
