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
			}
			\addlyrics { \lyr \lyricmode {
				!I saw Hea- ven stand- ing o- pen
				!And be- fore me there was stand- ing
				!A white horse!
				!And the ri- der of the horse with just- ice
				!Jud- ges and makes war
				!Is Faith- ful and True!
				% [1]

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
				}
			>>
		% >>
	>>
	\layout { }
	\midi { \context { \ChordNameVoice \remove Note_performer } } % Stop chords from sounding in the MIDI
}
