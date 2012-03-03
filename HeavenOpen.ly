% Revelation 19: I saw heaven standing open
% Also 2 Peter 3:4, Philippians 2:10-11
\include "Hymnal.ly"

\header
{
	title="I saw Heaven standing open"
	subtitle="Revelation 19"
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
			\transpose c c,
			\chordmode {
			}
		}
		\new Staff <<
			% Voice
			\set Staff.midiInstrument = "acoustic grand"
			\key bf \major
			\time 6/8
			\tempo "" 4 = 168
			\new Voice = "sops" \relative f' {
				r2. r r r4 r8
				f4 f8 bf4 a8 g4 a8 bf4 f8 bf4 c8 d4 c8 bf4 c8 d4 bf8 bf(c) d f2.~f~f~f8 r r
				f,4 f8 bf4 a8 g4 a8 bf4 f8 bf4 c8 d4 c8 bf4 c8 d4 bf8 bf c d f2.~f~f~f8 r r
				% [1]
				d4. c4 b8 b4 bf8 bf4(a8) g4(f8) d'2.(c4.) r4 r8
				c4(b8) b4 bf8 bf4 c16(bf) a4 g8 f'2.(c8) r r
				a4 a8 f'4 e8 e4 d8 cs4 a8 a4 a8 f'4 e8 e4 d8 cs4 a8
				a4 a8 d4(c8) ef4(a,8) c4(bf8) bf(a) g f2.
				% [2]
			}
			\addlyrics { \lyr \lyricmode {
				!I saw Hea- ven stand- ing o- pen
				!And be- fore me there was stand- ing
				!A white horse!
				!And the ri- der of the horse with just- ice
				!Jud- ges and makes war
				!Is Faith- ful and True!
				% [1]
				!His eyes are like a blaz- ing fire
				!And on his head are ma- ny crowns
				!From his mouth a sword pro- gres- ses,
				!He will rule with i- ron scep- ter
				!And he leads the ar- my of heav'n!
				% [2]
			} }
		>>
		% \new GrandStaff <<
			% Accompaniment
			\new Staff <<
				\set Staff.midiInstrument = "acoustic grand"
				\key bf \major
				\time 6/8
				\tempo "" 4 = 168
				\new Voice = "treble" \relative f' {
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
				}
			>>
			\new Staff <<
				\clef bass
				\key bf \major
				\new Voice = "bass" \relative c' {
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
				}
			>>
		% >>
	>>
	\layout { }
	\midi { \context { \ChordNameVoice \remove Note_performer } } % Stop chords from sounding in the MIDI
}
