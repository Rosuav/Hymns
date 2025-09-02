\version "2.24.0"
% Instant hymn file, just add content!
\include "../Hymnal.ly"

\header
{
	title="From the Squalor of a Borrowed Stable"
	% subtitle="[words title]"
	poet="Stuart Townend"
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
			d1 d b:m e4:m d a2:sus4
			d1 d b:m a2:sus4 d1
			d1 d4 d/fs g2
			g2 d a:sus4 a
			d1 d4 d/fs g2
			g d a:sus4 d1
			}
		}
		\new Staff <<
			\set Staff.midiInstrument = "acoustic grand"
			\key d \major
			\time 4/4
			\tempo "" 4 = 120
			\new Voice = "sops" \relative f' {
				r4 d8 cs d e fs d g4 fs e d
				r4 d8 cs d e fs a b4 a e2
				r4 d8 cs d e fs d g4 fs e d
				r4 d8 cs d e fs d
				\time 2/4 e4 d
				\time 4/4 d2.
				\slurDashed
				d'8_( cs) b4 a fs d'8_( cs) b4 a b2
				b4 a fs8 e d e fs4 e e
				d'8_( cs) b4 a fs d'8_( cs) b4 a b2
				b4 a fs8 e d fs
				\time 2/4 e4 d
				\time 4/4 d1
			}
			\addlyrics { \lyr \lyricmode {
			\set stanza = #"1. "
				\set ignoreMelismata = ##t
				!From the squa- lor of a bor- rowed sta- ble,
				!by the Spi- rit and a vir- gin's faith,
				!to the an- guish and the shame of scan- dal
				!came the Sa- viour of the hu- man race!
				!But the skies were filled with the praise of heav'n,
				!shep- herds lis- ten as the an- gels tell
				!of the Gift of God
				\unset ignoreMelismata
				come down to man
				!at the dawn- ing of Im- man- u- el.
			} }
			\addlyrics { \lyr \lyricmode {
			\set stanza = #"2. "
				\set ignoreMelismata = ##t
				!King of hea- ven now the Friend of sin- ners,
				!Hum- ble ser- vant in the Fa- ther's hands,
				!Filled with po- wer and the Ho- ly Spi- rit,
				!Filled with mer- cy for the bro- ken man.
				!Yes, He walked my road and He felt my pain,
				!Joys and sor- rows that I know so well;
				!Yet His right- eous steps give me hope a- "gain  -"
				!I will fol- low my Im- man- u- el.
				\unset ignoreMelismata
			} }
			\addlyrics { \lyr \lyricmode {
			\set stanza = #"3. "
				!Through the kis- ses of a friend's be- tray- al,
				!He was lift- ed on a cru- el cross;
				!He was pun- ished for a world's trans- gres- sions,
				!He was suf- fer- ing to save the lost.
				!He fights for breath, He fights for me,
				!Loos- ing sin- ners from the claims of hell;
				!And with a shout our souls are "free  -"
				!Death de- feat- ed by Im- man- u- el.
			} }
			\addlyrics { \lyr \lyricmode {
			\set stanza = #"4. "
				\set ignoreMelismata = ##t
				!Now He's stand- ing in the place of hon- our,
				!Crowned with glo- ry on the high- est throne,
				!In- ter- ced- ing for His own be- lov- ed
				!Till His Fa- ther calls to bring them home!
				!Then the skies will part as the trum- pet sounds
				!Hope of hea- ven or the fear of hell;
				!But the Bride will run to her Lo- ver's arms,
				!Giv- ing glo- ry to Im- man- u- el!
				\unset ignoreMelismata
			} }
		>>
	>>
	\layout { }
	\midi { \context { \ChordNames \remove Note_performer } } % Stop chords from sounding in the MIDI
}
