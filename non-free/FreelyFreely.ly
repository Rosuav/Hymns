% Freely, Freely (God forgave my sin)
% From Resource Christian Music #280, arranged for chords and two fingers
\include "../Hymnal.ly"

\header
{
	title="Freely, Freely"
	% subtitle=""
	% poet=""
	% composer=""
	% arranger=""
	% meter="" ??
	% piece="" ??
	copyright=\markup { \smaller "Copyright 1972 by Lexicon Music, Inc - transcribed from RCM #280" }
}

\score {
	<<
		\new ChordNames {
			\set chordChanges = ##t
			\transpose c c,
			\chordmode {
				s2. e2 b4 cs2.:m fs2:m e4 b2 b4:7
				fs2.:m b:7 e2 b4:7 e2.:7
				a e a2 b4 e2. cs2:m a4 gs2.:m fs2:m7 b4:7 e fs:m7 b:7
				e2. e fs:m b:7 b:7 b:7 e~e
				e2. e fs:m b:7 b:7 b:7 e~e
			}
		}
		\new Staff <<
			\set Staff.midiInstrument = "acoustic grand"
			\key e \major
			\time 3/4
			\tempo "" 4 = 120
			\new Voice = "sops" \relative f' {
				r2 % To start on an upbeat, put this _before_ the \voiceOne (otherwise it works fine, but prints badly)
				\voiceOne
				e8 fs gs2 fs4 e2 e4 a2 gs4 fs2
				fs8 gs a2 gs4 fs2 fs4 b2 a4 gs2
				e8 e cs'2 cs4 b2 e,4 a2 b4 gs2
				e4 gs2 a4 b2 a8 gs fs2 fs4 e gs a
				b4.(a8) gs4 b4.(a8) gs4 cs4 cs4. b8 a2.
				a4.(gs8) fs4 a4.(gs8) fs4 gs2.~gs
				b4. a8 gs4 b4. a8 gs4 cs4 cs4. b8 a2.
				a4. gs8 fs4 a4. gs8 fs4 gs2.~gs2
			}
			\addlyrics { \lyr \lyricmode {
				!God for- gave my sin in Je- sus' name.
				!I've been born a- gain in Je- sus' name.
				!And in Je- sus' name I come to you
				!To share His love as He told me to. He said,
				!free- ly, free- ly you have re- ceived,
				!Free- ly, free- ly give.
				!Go in my name and be- cause you be- lieve
				!Oth- ers will know that I live.
			} }
			\addlyrics { \lyr \lyricmode {
				!All _ power is giv'n in Je- sus' name,
				!In _ earth and heaven in Je- sus' name.
				!And in Je- sus' name I come to you
				!To share His power as He told me to. He said,
				!free- ly, free- ly you have re- ceived,
				!Free- ly, free- ly give.
				!Go in my name and be- cause you be- lieve
				!Oth- ers will know that I live.
			} }
			\new Voice = "alto" \relative f' {
				s2 % The same rest, but as a spacer so it doesn't print
				\voiceTwo
				e8 fs e2 ds4 cs2 cs4 fs2 e4 ds2
				ds8 e fs2 e4 ds2 ds4 gs2 fs4 e2
				e8 e a2 a4 gs2 e4 e2 fs4 e2
				e4 e2 e4 gs2 a,8 b cs2 ds4 e e fs
				gs4.(fs8) e4 gs4.(fs8) e4 a4 a4. gs8 fs2.
				fs4.(e8) ds4 fs4.(e8) ds4 e2.~e
				gs4. fs8 e4 gs4. fs8 e4 a4 a4. gs8 fs2.
				fs4. e8 ds4 fs4. e8 ds4 e2.~e
			}
		>>
	>>
	\layout { }
	\midi { \context { \ChordNameVoice \remove Note_performer } } % Stop chords from sounding in the MIDI
}
