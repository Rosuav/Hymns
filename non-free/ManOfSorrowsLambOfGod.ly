\include "../Hymnal.ly"

\header
{
	title="Man of Sorrows, Lamb of God"
	poet="Matt Crocker & Brooke Ligertwood"
	% composer=""
	% arranger=""
	% meter="" ??
	% piece="" ??
	copyright=\markup { \center-column { \smaller "Copyright 2012 Hillsong Music Publishing (APRA). All rights reserved. International" \smaller "copyright secured. Used by permission. CCLI Song No 6476063" "   " } }
}

\score {
	<<
		\new ChordNames {
			\set chordChanges = ##t
			\transpose c c,
			\chordmode {
				f1 bf2 f
				bf f c1
				d:m bf2 d:m
				bf c f1
				
				d2:m bf f c
				d:m bf c1
				bf2 f c d:m
				bf c f1
			}
		}
		\new Staff <<
			\set Staff.midiInstrument = "Flute"
			\key f \major
			\time 4/4
			\tempo "" 4 = 120
			\new Voice = "sops" \relative f' {
				f4. g8 a8.( c16) c4 d c a
				r8 c d4. c8 a4. f8( g) g4.
				r4 r8 f f4. g8 a8.( c16) c4 d f a, r8
				c d4. c8 a16( g8. ~ g8) f ~ f f4.
				
				r4 f'8. e16 d4 d c a8 c c2 g4
				f'8. e16 d4 d c a8. c16 ~ c8 c4.
				r4 f8. e16 d4 d c a8 f' e4( f) d
				a8 c bf8.( a16) a8.( g16) g4. f8 ~ f f4.
			}
			\addlyrics { \lyr \lyricmode {
			\set stanza = #"1. "
				!Man of sor- rows, Lamb of God
				!_ by His own be- trayed.
				!The sin of man and wrath of God
				!has been on Je- sus laid.
				
				!Oh, that rug- ged cross, my sal- va- tion,
				!where Your love poured out o- ver me!
				!Now my soul cries out, 'Hal- le- lu- jah!
				!Praise and ho- nour un- to Thee!'
			} }
				
			\addlyrics { \lyr \lyricmode {	
			\set stanza = #"2. "
				!Si- lent as he stood ac- cused,
				!_ beat- en, mocked and scorned,
				!_ bow- ing to the Fa- ther's will,
				!He took a crown of thorns.
			} }
				
			\addlyrics { \lyr \lyricmode {	
			\set stanza = #"3. "
				!Sent of hea- ven, God's own Son,
				!to pur- chase and re- deem,
				!And re- con- cile the ve- ry ones
				!who nailed Him to that tree.
			} }
				
			% \addlyrics { \lyr \lyricmode {	
			% \set stanza = #"Bridge "
			% 	!Now my debt is paid, it is paid in full
			% 	!by the pre- cious blood that my Je- sus spilled.
			% 	!Now the curse of sin has no hold on me:
			% 	!whom the Son sets free, oh is free in- deed.
			% } }
				
			\addlyrics { \lyr \lyricmode {	
			\set stanza = #"4. "
				!See the stone is rolled a- way,
				!Be- hold the emp- ty tomb.
				!_ Hal- le- lu- jah, God be praised,
				!He's ri- sen from the grave!
			} }
		>>
		\new Staff <<
			\clef bass
			\key f \major
			\new Voice = "accomp3" \relative c, {
				s1 s s s
				s s s s
				s s s s
				s s s s
			}
		>>
	>>
	\layout { }
	% \midi { \context { \ChordNameVoice \remove Note_performer } } % Stop chords from sounding in the MIDI
	\midi { }
}
