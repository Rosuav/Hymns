% "I had a dream... once" from Disney's "Tangled"
% Transcribed from songbook and transposed from E (scored) into F (performed)
% TODO: Make the cross-head notes not sound in the MIDI. They're non-notes.
\version "2.14.2"
\include "../Hymnal.ly"

\header
{
	title="I've got a dream"
	poet="Lyrics by Glenn Slater"
	composer="Music by Alan Menken"
	copyright=\markup { \smaller "Copyright 2010 Wonderland Music Company, Inc, and Walt Disney Music Company - private use transcription" }
}

\score {
	<<
		\new ChordNames {
			\set chordChanges = ##t
			\transpose c c,
			\chordmode {
				e4. e8 b4:7 e b1:7
				% Verse
				e a cs2:m7 fs:9 b1:7 e2. e4:7 a2 as:dim7 g:7 fs4:m7 b e1
				gs:m cs:m fs cs2:11 b:7 e2. e4:7 a2 as:dim7 s1 g4:7 cs:7 fs:m7 b:7 e1
				% Chorus
				a e gs2:m cs:m fs:m7 b:7 e2. e4/gs a2 fs g4:7 cs:7 fs:m7 b
				% Sodium
				e2 fs4:m e a2 b e fs b:sus4 b
				% Verse
				e2. e4:7 a1 cs2:m7 fs:9 b1 e2 e:7 a fs/as g4:7 cs:7 fs:m7 b:7 e1
			}
		}
		\new Staff <<
			\set Staff.midiInstrument = "acoustic grand"
			\key e \major
			\time 4/4
			\tempo "" 4 = 120
			\new Voice = "lyrics" \relative f' {
				r1 r2 r4
				% Verse
				\override Staff.NoteHead #'style = #'cross
				b8 b b b b b b b4
				\override Staff.NoteHead #'style = #'default
				e,8 e e e16 e8. ds8 cs4 b8 b16 b b8 b e gs gs fs e ds fs4. r4
				b,8 b gs' gs gs gs fs4 e8 e a a a b cs4 r8
				gs b b b b a fs e ds fs16 e e8~e4 r4
				% Can't you see me...
				ds8 ds gs gs gs gs gs fs e ds e gs~gs2 r4
				fs16 fs fs4 fs8 gs fs e ds fs2 r4
				b8 e, gs gs gs gs fs e r e16 e
				\override Staff.NoteHead #'style = #'cross
				b'8 b b b b b
				\override Staff.NoteHead #'style = #'default
				r4 r2 e8 cs~cs8. gs16 b8 b b gs a fs e ds e2
				% Chorus
				r8 e fs gs a2 r8 cs b a gs2 r4
				e8 fs gs b b b cs gs fs e b'2 r4
				e,8 fs gs gs b b fs e e e e e e e ds cs r
				e b' b b b a fs e ds
				% Sodium
				gs8 % s/be "<< { gs8 } \\ { e2 } >>" but lyrics don't attach to it
				gs4 gs8 fs4 e cs e ds cs b gs' fs as b2
				r4
				% Verse
				e,8 fs gs gs gs gs fs e r
				\override Staff.NoteHead #'style = #'cross
				b'8 b b b b b b
				\override Staff.NoteHead #'style = #'default
				r cs, b b b e gs gs fs e ds fs4 r r8
				\override Staff.NoteHead #'style = #'cross
				b b b b b b b4 b8 b b b b b b4
				\override Staff.NoteHead #'style = #'default
				r8 cs b b b gs a fs e ds fs e4.
			}
			\addlyrics { \lyr \lyricmode {
				!HOOK:_I'm ma- li- cious, mean, and scar- y,
				!my sneer could cur- dle dair- y,
				!and vi- o- lence wise, my hands are not the clean- est.
				!But de- spite my e- vil look, and my tem- per and my hook,
				!I've al- ways yearned to be a con- cert pi- a- nist.
				!Can't you see me on the stage per- form- ing Mo- zart?
				!Tick- l- ing the i- v'ries till they gleam?
				!Yep, I'd rath- er be called dead- ly
				!for my kill- er show- tune med- ley,
				!(Thank you!)
				!'Cause way down deep in- side, I've got a dream.
				!CHORUS:_He's got a dream,
				!he's got a dream.
				!HOOK:_See, I ain't as cruel and vi- cious as I seem.
				!Though I do like break- ing fe- murs,
				!you could count me with the dream- ers.
				!Like ev- 'ry- bod- y else, I've got a
				!dream._Na na na na na na na na na na na na na na.
				!BIG_NOSE:_I've got scars and lumps and bruis- es,
				!plus some- thing here that ooz- es,
				!and let's not e- ven men- tion my com- pex- ion.
				!But de- spite my ex- tra toes
				!and my goi- ter, and my nose,
				!I real- ly want to make a love con- nec- tion.
			} }
		>>
	>>
	\layout { }
	\midi { }
}
