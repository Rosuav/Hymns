% A musical pun.
\include "Hymnal.ly"

\header
{
    title="Variables"
    composer="Sir Arthur Seymour Sullivan"
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
	        s1
	        f2 c:7 f f f c:7 c4:7 f f2
		a:m f a:7 d:m a:m a4:m e e:7 a:m a2:m
		d g:m d g4:m f:7 bf2. g4:7 f c s
		c:7 f c f4. d8:m f4 bf f4. bf8 f4 f f4. c8:7 c4:7 f2
            }
        }
        \new Staff <<
            \set Staff.midiInstrument = "acoustic grand"
            \key f \major
            \time 4/4
            \tempo "" 4 = 120
            \new Voice = "sops" \relative f' {
                r2. % To start on an upbeat, put this _before_ the \voiceOne (otherwise it works fine, but prints badly)
                \voiceOne
		a4 a a bf g c4. d8 c4 bf a a bf g g f r
		a c bf bf a a4. g8 f4 f e a c b b a 4 r
		a a g8(a) bf4 bf a g8(a) bf4 c d4. c8 bf4 a a g r
		c c c f4. a,8 a4 a c4. f,8 f4 f a4. g8 g4 f r
            }
            \addlyrics { \lyr \lyricmode {
                !Dear friends, take pi- ty on my lot,
		!My cup is not of nec- tar.
		!I long have loved, as who would not
		!Our kind and rev- erend rec- tor.
		!Long years a- go my love be- gan,
		!So sweet- ly, yet so sad- ly,
		!But when I saw this plain old man
		!I found I loved him mad- ly.
            } }
            \new Voice = "alto" \relative f' {
                s2. % The same rest, but as a spacer so it doesn't print
                \voiceTwo
		f4 f f e e f4. f8 f4 f f f e e e f s
		f a g g f e4. e8 d4 d c e a gs gs a s
		a fs e8(fs) g4 g fs e8(fs) g4 a bf4. a8 g4 f f e s
		e f e f4. f8 e4 d c4. d8 c4 c f4. e8 e4 f s
            }
        >>
        \new Staff <<
            \clef bass
            \key f \major
            \new Voice = "tenor" \relative c' {
                r2.
                \voiceOne
		c4 c c c c c4. bf8 c4 d c c g bf bf a r
		c c c c c cs4. cs8 d4 a a c e d d c r
		a c c bf d d d d ef d4. d8 d4 d c c r
		c c bf a4. f8 f4 f f4. bf8 a4 a c4. bf8 bf4 a r
            }
            \new Voice = "bass" \relative c' {
                s2.
                \voiceTwo
		f,4 f f g bf a4. bf8 a4 bf c c, c c c f s
		f e e f f8(g) a4. a8 d,4 d e e e e e a, s
		a' d, d g bf,8(c) d4 d g f bf4. bf,8 bf4 b c c s
		bf' a g f4. d8 c4 bf a4. bf8 c4 c c4. c8 c4 f s
            }
        >>
    >>
    \layout { }
    \midi { \context { \ChordNameVoice \remove Note_performer } } % Stop chords from sounding in the MIDI
}

% Additional verses
\markup \fill-line {
\column {
"2. I know not why I love him so;"
"It is enchantment, surely!"
"He's dry and snuffy, deaf and slow"
"Ill-tempered, weak and poorly!"
"He's ugly, and absurdly dressed,"
"And sixty-seven nearly,"
"But if the truth must be confessed,"
"I love him very dearly!"
}
}
