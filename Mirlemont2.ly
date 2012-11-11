% Look where yonder sun is gleaming
% Original score, p169 (ish)
% Words: Rej 520 (copyright)
\include "Hymnal.ly"

\header
{
	title="Mirlemont"
	subtitle="O Lord of Heaven and Earth and Sea"
	poet="Christopher Wordsworth"
	composer="Sir Arthur Sullivan" % circa 1898
	arranger="arr Chris Angelico" % 2012-02-05
	% meter="" ??
	% piece="" ??
	subsubtitle=\markup { \smaller "Words copyright 1987 Presbyterian Church of Australia - CCLI 242927" }
}

\score {
	<<
		\new ChordNames {
			\set chordChanges = ##t
			\transpose bf ef,
			\chordmode {
				s2.
				bf4. bf bf bf f:7 f:7 f:7 f:7
				bf bf bf bf f:7 f:7 f:7
				f:7 bf bf:m d:dim d:dim ef ef a:7 a:7
				d:m c:m bf f:7 bf
			}
		}
		\new Staff <<
			\set Staff.midiInstrument = "acoustic grand"
			\key ef \major
			\time 6/8
			\tempo "" 4 = 160
			\new Voice = "sops" \transpose bf ef \relative f' {
				r2 r8
				\voiceOne
				bf8 bf4 d8 c4 bf8 bf4(d8) c4(bf8) ef2.(a,2~a8)
				a8 bf4 d8 c4 bf8 bf4(d8) c4(bf8) g'2.~g4.
				f4(ef8) d4 cs8 cs4 d8 d4. d8(c bf) g'2.(a)
				f4.(ef8 d c) d4. c bf
				\oneVoice
				r
			}
			\addlyrics { \lyr \lyricmode {
				\set stanza = #"1."
				!O Lord of heav'n and earth and sea
				!to You all praise and glo- ry be,
				!who loved us from e- ter- ni- ty
				!and gave us all.
			} }
			\addlyrics { \lyr \lyricmode {
				\set stanza = #"2."
				!The gol- den sun- shine, gen- tle air,
				!sweet flowers and fruit Your love de- clare;
				!when har- vests ri- pen You are there,
				!who gives us all.
			} }
			\new Voice = "alto" \transpose bf ef \relative f' {
				s2 s8
				\voiceTwo
				f8 f4 f8 f4 f8 f4. f a2.(f2~f8)
				f8 f4 f8 f4 f8 f4. f a2.~a4.
				a4. bf4 bf8 bf4 bf8 af4. af g2.(a)
				f4.(g bf) a bf s
			}
		>>
		\new Staff <<
			\clef bass
			\key ef \major
			\new Voice = "tenor" \transpose bf ef \relative c' {
				r2 r8
				\voiceOne
				d8 d4 d8 d4 d8 d4. d f2.(ef2~ef8)
				ef8 d4 d8 d4 d8 d4. d ef2.~ef4.
				f4. f4 f8 f4 f8 f4. bf, ef2.(cs)
				d4.(c f) ef <d bf>
				\oneVoice
				r
			}
			\new Voice = "bass" \transpose bf ef \relative c' {
				s2 s8
				\voiceTwo
				bf8
				bf4 bf8 f4 f8 bf4. f c'2.(f,2~f8)
				f8 bf4 bf8 f4 f8 bf4. f c'2.~c4.
				f,4. bf4 bf8 f4 f8 d4. bf ef2.(a,)
				d4.(ef f) f bf, s
			}
		>>
	>>
	\layout { }
	\midi { \context { \ChordNameVoice \remove Note_performer } } % Stop chords from sounding in the MIDI
}

% Additional verses
\markup \fill-line {
\column {
"3. For peaceful homes and healthful days,"
"for all the blessings earth displays,"
"we owe You thankfulness and praise,"
"who gives us all."
" "
"4. Freely You gave Your only Son,"
"who on the cross salvation won;"
"and in the life through Him begun"
"You give us all."
" "
"5. You sent Your Spirit from above"
"as wind and fire and gentle dove;"
"and in His gifts of power and love"
"You gave us all."
}
\column {
"6. For souls redeemed, for sins forgiven,"
"for means of grace and hopes of heaven,"
"to You, O Lord, what can be given?"
"You give us all."
" "
"7. We lose what on ourselves we spend;"
"we have as treasure without end"
"whatever, Lord, to You we lend."
"You give us all."
" "
"8. Father, from whom we all receive"
"our life, our gifts, our power to give,"
"O may we ever with you live:"
"You give us all."
}
}
