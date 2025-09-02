\version "2.24.0"
% Revelation 19: I saw heaven standing open
% Also 2 Peter 3:4, Philippians 2:10-11
\include "Hymnal.ly"

\header
{
	title="I saw Heaven standing open"
	subtitle="Revelation 19"
	poet="Michael Angelico"
	composer="Sir Arthur Sullivan" % circa 1898
	arranger="arr Michael and Chris Angelico" % 2012-03-07
}

\score {
	<<
		\new ChordNames {
			\set chordChanges = ##t
			\transpose c c,
			\chordmode {
				s4. b:dim7 b:dim7 b:dim7 s4. f:7 f:7
			}
		}
		\new Staff <<
			% Philip
			\set Staff.midiInstrument = "trumpet"
			\key bf \major
			\time 6/8
			\tempo "" 4 = 168
			\transposition c
			\new Voice = "solo" \relative f' {
				r2. r r r4 r8
				f4 f8 bf4 a8 g4 a8 bf4 f8 bf4 c8 d4 c8 bf4 c8 d4 bf8 bf(c) d f2.~f~f~f8 r r
				f,4 f8 bf4 a8 g4 a8 bf4 f8 bf4 c8 d4 c8 bf4 c8 d4 bf8 bf(c) d f2.~f~f~f8 r r
				% [1]
				d4. c4 b8 b4 bf8 bf4(a8) g4 f8 d'2. c4. r4 r8
				c4(b8) b4 bf8 bf4 c16(bf) a4 g8 f'2.(c8) r r
				a4 a8 f'4 e8 e4 d8 cs4 a8 a4 a8 f'4 e8 e4 d8 cs4 a8
				a4 a8 d4 c8 ef4 a,8 c4 bf8 bf(a) g f2.
				% [2]
				r4 r8 af(g) af f'2.~f8 r r af,(g) af gf'2.~gf8 r r
				af,8(g) af c4 df8 df4 d8 d4 ef8 c(bf) af bf2. af8 r r
				af(g) af f'2.~f8 r r f,(e) f ef'2.~ef8 r
				f, f4 f8 bf4 a8 bf4 c8 ef4 df8 c4 bf8 f'2.~f4. r4 r8
				% [3]
				bf,4 d8 c4 bf8 bf4 d8 c4 bf8 ef2. a,4. r4 r8
				bf4 d8 c4 bf8 bf4 d8 c4 bf8 g'2.~g8 r r
				f4 ef8 d4 cs8 cs4 d8 d4 d8 c4 bf8 g'2.(a4.~a4) r8
				f4. ef8(d c) d4. c bf~bf8 r r r2.
				% [4]
				\break
				r2. r r r r r r r r r r r r r r
			}
			\addlyrics { \lyr \lyricmode {
				!I saw Hea- ven stand- ing o- pen
				!And I saw re- vealed be- fore me
				!A white horse!
				!And the ri- der of the horse is True
				!and Faith- ful as He jud- ges
				!And makes war!
				% [1]
				!His eyes are like a fire as it bla- zes
				!And on his head are ma- ny crowns
				!From his mouth a sword pro- gres- ses,
				!He will rule with i- ron scep- ter
				!And he treads the wine- press of the wrath of God.
				% [2]
				!King of Kings, Lord of Lords!
				!With the ar- my of the Lord ar- rayed be- hind Him.
				!King of Kings, Lord of Lords!
				!Though ev- 'ry king on earth op- po- ses Him in force!
				% [3]
				!Say ye that the Lord is slow in com- ing?
				!Nay, Lord Je- sus Christ will come at last!
				!Ev- 'ry knee shall bow and ev- 'ry tongue con- fess
				!Je- sus Christ is Lord!
				% [4]
			} }
		>>
		\new ChoirStaff <<
			\new Staff <<
				\set Staff.midiInstrument = "choir aahs"
				\key bf \major
				\time 6/8
				\tempo "" 4 = 168
				\new Voice = "sops" \relative f' {
					r2. r r r r r r r r r r r r r r r r r r r r r r r r r r r r r r r r r
					r r r r r r r r r r r r r r r r r r r r r r r r r r r r r r r r r r
					\voiceOne
					bf4 d8 c4 bf8 bf4 d8 c4 bf8 ef2.(a,4.~a4)
					a8 bf4 d8 c4 bf8 bf4 d8 c4 bf8 g'2.~g4.
					f4(ef8) d4(cs8) cs4 d8 d4. d8(c) bf g'2.(a)
					f4. ef8(d c) d4. c bf2.
				}
				\addlyrics { \lyr \lyricmode {
					!Ev- 'ry knee shall bow and ev- 'ry tongue
					!Con- fess that Je- sus Christ is Lord of all!
					!Hail, hail to the Lord of the world!
					!Je- sus Christ is King!
				} }
				\new Voice = "alto" \relative f' {
					s2. s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s
					s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s
					\voiceTwo
					f4 f8 f4 f8 f4 f8 f4 f8 a2.(f4.~f4) f8
					f4 f8 f4 f8 f4 f8 f4 f8 a2.~a4.
					a4. bf bf4 bf8 af4. af4 af8 g2.(a)
					f4. g bf4. a bf2.
				}
			>>
			\new Staff <<
				\set Staff.midiInstrument = "choir aahs"
				\clef bass
				\key bf \major
				\new Voice = "tenor" \relative c' {
					r2. r r r r r r r r r r r r r r r r r r r r r r r r r r r r r r r r r
					r r r r r r r r r r r r r r r r r r r r r r r r r r r r r r r r r r
					\voiceOne
					d4 d8 d4 d8 d4 d8 d4 d8 f2.(ef4.~ef4) ef8
					d4 d8 d4 d8 d4 d8 d4 d8 ef2.~ef4.
					f4. f f4 f8 f4. bf,4 bf8 ef2.(cs)
					d4. c f4. ef <d bf>2.
				}
				\new Voice = "bass" \relative c' {
					s2. s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s
					s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s
					\voiceTwo
					bf4 bf8 f4 f8 bf4 bf8 f4 f8 c'2.(f,4.~f4) f8
					bf4 bf8 f4 f8 bf4 bf8 f4 f8 c'2.~c4.
					f,4. bf f4 f8 d4. bf4 bf8 ef2.(a,)
					d4. ef f4. f bf,2.
				}
			>>
		>>
		\new GrandStaff <<
			% Accompaniment
			\new Staff <<
				\set Staff.midiInstrument = "acoustic grand"
				\key bf \major
				\time 6/8
				\tempo "" 4 = 168
				% TODO: Use \unfoldRepeats in the MIDI output but not in the printed score
				% And do that in Template.ly so it can be clean forever after.
				\new Voice = "treble" \unfoldRepeats \relative f' {
					r4 r8 <b f' af> r r <b f' af> r r <b f' af> r r
					r4 r8 <a ef' f a> r r <a ef' f a> r r <c, ef> r r
					<d bf> r r <ef bf> r r <d bf> r r <d bf> r r
					<d bf> r r <ef bf> r r <d bf> r r <d bf> r r
					<ef a, f> r <a c> <a c> <g bf> <a c>
					<bf d> r <bf d,> <bf d,> <c f,> <d bf>
					<c a> r <c a> <c a> <bf g> <c a> <d bf> r r
					<d, bf> r r
					<d bf> r r <ef bf> r r <d bf> r r <d bf> r r
					<d bf> r r <ef bf> r r <d bf> r r <d bf> r r
					<ef a, f> r <a c> <a c> <g bf> <a c>
					<bf d> r <bf d,> <bf d,> <c f,> <d bf>
					<c a> r <c a> <c a> <bf g> <c a> <d bf> r r
					% [1]
					<d f,>4. <c f,>4 b8 <b f c>4 bf8 <bf f c>4 a8 <g c,>4 f8
					<e c bf>8 r r <e c bf>8 r r <e c bf>8 r r <e c bf>8 r r
					<c' e,>4 b8 <b e,>4 bf8 <bf e,>4 c16 bf <a e>4 g8
					<f c> r r <f c a> r r <f c a> r r a r r
					<f d a> r r <f d a> r r <e cs> r r <a a,> r r
					<f d a> r r <f d a> r r <e cs> r r a r r
					<< { d4(c8 ef4 a,8 c4 bf8 bf a g) } \\ { d4.(ef d e) } >>
					f8 r f16 f f8 r f16 f
					% [2]
					f8 gf g af g af <f af f'> r r16 a <a f d>8 r r16 bf
					<bf f d>4(af8) af g af <gf c gf'> r r16 a <a g c,>8 r r16 bf
					<bf gf c,>4(af8) <af gf c,> g af <c af gf>4 df8 <df af gf>4 d8
					<d af gf>4 ef8 <c gf> bf af <bf g e>2.(<af f>8) r r
					<af f> g af <f af f'> r r16 a <a f df>8 r r16 bf <bf f df>4(af8)
					f e f <ef a ef'> r r16 g <g ef c>8 r r16 af <af ef c>4(a8)
					f4 f8 <f df>8 r r <f df bf> r r <ef bf> r r <e bf> r r
					<f a,>4 f16 f f4 f16 f f4 f16 f <f ef>4 f16 f
					% [3]
					<bf d,>8 r r <d, bf> r r <d bf> r r <d bf> r r
					<ef a,> r r <ef a,> r r <ef a,> r r <ef a,> r r
					<d bf> r r <d bf> r r <d bf> r r <d bf> r r
					<a' ef a,> r r <a ef a,> r r <a ef a,> r r <a ef a,> r r
					<af d, bf> r r <af f bf,> r r <af f bf,> r r <af f bf,> r r
					\repeat tremolo 6 { <g ef>16 bf, }
					\repeat tremolo 6 { <g' cs,>16 a, }
					<f' d a>8 r r <g c, g> r r <bf f d> r r <a f ef> r r
					<bf f d>4 f16 f f4 f16 f f4 f16 f f4 f16 f
					% [4]
					<< {
					bf4 d8 c4 bf8 bf4 d8 c4 bf8 ef2.(a,4.~a4) s8
					bf4 d8 c4 bf8 bf4(d8) c4(bf8) g'2.~g4.
					f4(ef8) d4(cs8) cs4 d8 d4. d8(c) bf g'2.(a)
					f4. ef8(d c) d4. c bf2.
					} \\ {
					<f d>4. <f d> <f d> <f d> <a ef>2. <f ef>4.~<f ef>4 s8
					<f d>4. <f d> <f d> <f d> <a ef'>2.~<a ef'>4.
					a <bf f> <bf f> <af f> <af f> <g bf ef>2. <g cs e>
					<a d>4. g8 s s <f bf>4. <ef a> d2.
					} >>
				}
			>>
			\new Staff <<
				\set Staff.midiInstrument = "acoustic grand"
				\clef bass
				\key bf \major
				\new Voice = "bass" \unfoldRepeats \relative c' {
					<< { r4 r8 <b d f> r r <b d f> r r <b d f> r r } \\ { <d, d,>2.~<d d,> } >>
					<< { r4 r8 <c' ef f> r r <c ef f> } \\ { <c, c,>2.~<c c,>8 } >>
					r8 r << f \\ f, >> r r
					<f' bf, bf,> r r <g bf, bf,> r r <f bf, bf,> r r <f bf, bf,> r r
					<f  bf, bf,> r r <g bf, bf,> r r <f bf, bf,> r r <f bf, bf,> r r
					f, r f'16 f f8 r r bf, r f'16 f f8 r r f, r f'16 f f8 r r bf, r r
					<f' bf, bf,> r r
					<f bf, bf,> r r <g bf, bf,> r r <f bf, bf,> r r <f bf, bf,> r r
					<f bf, bf,> r r <g bf, bf,> r r <f bf, bf,> r r <f bf, bf,> r r
					f, r f'16 f f8 r r bf, r f'16 f f8 r r f, r f'16 f f8 r r bf, r r
					% [1]
					<bf bf'> r r <f' a> r r <bf bf,> r r <f a> r r <bf bf,> r r
					g r r c, r r g' r r c, r r
					<bf' g> r r <bf c,> r r <bf g> r r <bf c,> r r
					<a f> r r c, r r f r r a r r
					<d, d,> r r <f f,> r r <a a,> r r a, r r <d d,> r r <f f,> r r
					<a a,> r r <a a,> r r
					<< { f4.(fs g bf) } \\ { bf,2.(bf4. c) } >>
					<a' f>8 r r r4 r8
					% [2]
					f8 gf g af g af <df, df,> r r <af af,> r r <df df,> r r <af af,> r r
					<ef' ef,> r r <af, af,> r r <ef' ef,> r r <af, af,> r r
					<af af,> r r <bf bf,> r r <b b,> r r <c c,> r r
					<df df,> r r <df df,> r r <df df,> r r
					af r r <df df,> r r <af af,> r r <df df,> r r <f f,> r r
					<c c,> r r f, r r <c' c,> r r
					<f f,> r r <bf bf,> r r <af af,> r r <g g,> r r <gf gf,> r r
					<f f,> r r <a f ef> r r <bf f d> r r <a f c> r r
					% [3]
					<bf f bf,> r r <f f, f,> r r <f bf, bf,> r r <f f, f,> r r
					<f c c,> r r <f f, f,> r r <f c c,> r r <f f, f,> r r
					<f bf, bf,> r r <f f, f,> r r <f bf, bf,> r r <f f, f,> r r
					<c c,> r r <f, f,> r r <c' c,> r r <f, f,> r r
					bf r r f r r bf r r bf, r r <ef' ef,> r r <ef ef,> r r
					<a, a,> r r <a a,> r r <bf bf,> r r <ef ef,> r r
					<f f,> r r <f f,> r r <bf, bf,>4 r8 r4 r8 r2.
					% [4]
					<bf bf,>8 r r <f f,> r r <bf bf,> r r <f f,> r r
					<c c'> r r <f f,> r r <c c'> r r <f f,> r r
					<bf bf,> r r <f f,> r r <bf bf,> r r <f f,> r r
					<c c'> r r <f f,> r r <f' f,> r r <f f,> r r
					<bf bf,> r r <f f,> r r <d d,> r r <bf bf,> r r
					\repeat tremolo 6 { ef,16 ef' }
					\repeat tremolo 6 { a,,16 a' }
					<d d,>8 r r <ef ef,> r r <f f,> r r <f f,> r r <bf, bf,>2.
				}
			>>
		>>
	>>
	\layout { \context { \Staff \RemoveEmptyStaves } \context { \Score \override VerticalAxisGroup.remove-first = ##t } }
	\midi { \context { \ChordNames \remove Note_performer } } % Stop chords from sounding in the MIDI
}
