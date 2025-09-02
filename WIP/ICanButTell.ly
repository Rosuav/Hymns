\version "2.24.0"
% Laine "I can but tell I knelt and prayed"
\include "../Hymnal.ly"

\header
{
	title="I Can But Tell"
	subtitle="Jesus, Lover of my Soul"
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
			\transpose f ef,
			\chordmode {
				s2
				f4 c:7 f bf
			}
		}
		\new Staff <<
			\set Staff.midiInstrument = "acoustic grand"
			\key ef \major
			\time 2/4
			\tempo "" 4 = 52
			\new Voice = "sops" \transpose f ef \relative f' {
				r2 % To start on an upbeat, put this _before_ the \voiceOne (otherwise it works fine, but prints badly)
				\voiceOne
				a8 g16(f) bf8 g c a d(
				c16 bf) bf(a) g(f) a8 g g8. a16 f4
				a8 g16(f) bf8 g c a d(
				f) f16(e) d(c) e8 d d8. e16 c4
				a8 a16(bf) c8 c f, g16(a) bf4
				bf8 g a f16(ef') ef8 d d4
				d,8 e fs8 a g16(fs) g8 d'(
				d,) e16(d) c8 c' a g16(a f a g8.) f16 f2
			}
			\addlyrics { \lyr \lyricmode {
				%{
				!Loved with e- ver- last- ing love,
				!led by grace that love to know;
				!Spi- rit, breath- ing from a- bove,
				!You have taught me it is so.
				!O this full and per- fect peace!
				!O his pres- ence so di- vine!
				!In a love which can- not cease
				!I am His, and He is mine.
				%}
				!Je- sus, lo- ver of my soul,
				!Let me to Thy bo- som fly,
				!While the near- er wa- ters roll,
				!While the tem- pest still is high.
				!Hide me, O my Sav- iour, hide,
				!Till the storm of life is past;
				!Safe in- to the ha- ven guide;
				!O re- ceive my soul at last!
			} }
			\addlyrics { \lyr \lyricmode {
				!O- ther re- fuge have I none,
				!Hangs my help- less soul on Thee;
				!Leave, ah! leave me not a- lone,
				!Still sup- port and com- fort me.
				!All my trust on Thee is stayed,
				!All my help from Thee I bring;
				!Co- ver my de- fence- less head
				!With the sha- dow of Thy wing.
			} }
			\new Voice = "alto" \transpose f ef \relative f' {
				s2 % The same rest, but as a spacer so it doesn't print
				\voiceTwo
			}
		>>
		\new Staff <<
			\clef bass
			\key ef \major
			\new Voice = "tenor" \transpose f ef \relative c' {
				r2
				r r r r r r r r r r r r r r r r r % Filler to force the staff to be printed
				\voiceOne
			}
			\new Voice = "bass" \transpose f ef \relative c' {
				s2
				\voiceTwo
			}
		>>
	>>
	\layout { }
	\midi { \context { \ChordNames \remove Note_performer } } % Stop chords from sounding in the MIDI
}

% Additional verses
\markup \fill-line {
\column {
"3. Thou, O Christ, art all I want,"
"More than all in Thee I find;"
"Raise the fallen, cheer the faint,"
"Heal the sick, and lead the blind."
"Just and holy is Thy Name,"
"I am all unrighteousness;"
"False and full of sin I am;"
"Thou art full of truth and grace."
}
\column {
"4. Plenteous grace with Thee is found,"
"Grace to cover all my sin;"
"Let the healing streams abound;"
"Make and keep me pure within."
"Thou of life the fountain art,"
"Freely let me take of Thee;"
"Spring Thou up within my heart;"
"Rise to all eternity."
}
}
