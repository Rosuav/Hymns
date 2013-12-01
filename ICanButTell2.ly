% Laine "I can but tell I knelt and prayed"
% Words from Cyber Hymnal
\include "Hymnal.ly"

\header
{
	title="I Can But Tell"
	subtitle="Just As I Am"
	poet="Charlotte Elliott"
	composer="Sir Arthur Sullivan" % circa 1898
	arranger="arr Chris Angelico" % 2012-12-11
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
			\set Staff.midiInstrument = "acoustic grand"
			\key f \major
			\time 2/4
			\tempo "" 4 = 52
			\new Voice = "sops" \relative f' {
				r2 % To start on an upbeat, put this _before_ the \voiceOne (otherwise it works fine, but prints badly)
				\voiceOne
				a8 g16 f bf8 g c a d
				c16(bf) bf(a) g(f) a8 g g8. a16 f4
				a8 g16 f bf8 g c a d
				f f16(e) d(c) e8 d d8. e16 c4
				a8 a16 bf c8 c f, g16(a) bf8.
				bf16 bf8 g a f16(ef') ef8 d d4
				d,8 e16 e fs8 a g16(fs) g8 d'
				d, e16(d) c8 c' a g16(a f a g8.) f16 f2
			}
			\addlyrics { \lyr \lyricmode {
				!Just as I am, with- out one plea,
				!But that Thy blood was shed for me,
				!And that Thou bidst me come to Thee,
				!O Lamb of God, I come, I come.
				!Just as I am, and wait- ing not
				!To rid my soul of one dark blot,
				!To Thee whose blood can cleanse each spot,
				!O Lamb of God, I come, I come.
			} }
			\addlyrics { \lyr \lyricmode {
				!Just as I am, poor, wretch- ed, blind;
				!Sight, rich- es, heal- ing of the mind,
				!Yea, all I need in Thee to find,
				!O Lamb of God, I come, I come.
				!Just as I am, Thou wilt re- ceive,
				!Wilt wel- come, par- don, cleanse, re- lieve;
				!Be- cause Thy pro- mise I be- lieve,
				!O Lamb of God, I come, I come.
			} }
			\addlyrics { \lyr \lyricmode {
				!Just as I am, Thy love un- known
				!Hath bro- ken ev- ery bar- rier down;
				!Now, to be Thine, yea, Thine a- lone,
				!O Lamb of God, I come, I come.
				!Just as I am, of that free love
				!The breadth, length, depth, and height to prove,
				!Here for a sea- son, then a- bove,
				!O Lamb of God, I come, I come!
			} }
			\new Voice = "alto" \relative f' {
				s2. % The same rest, but as a spacer so it doesn't print
				\voiceTwo
			}
		>>
		\new Staff <<
			\clef bass
			\key f \major
			\new Voice = "tenor" \relative c' {
				r2.
				\voiceOne
			}
			\new Voice = "bass" \relative c' {
				s2.
				\voiceTwo
			}
		>>
	>>
	\layout { }
	\midi { \context { \ChordNameVoice \remove Note_performer } } % Stop chords from sounding in the MIDI
}
