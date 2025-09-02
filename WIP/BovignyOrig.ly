\version "2.24.0"
% As to that, we would reply
\include "Hymnal.ly"

\header
{
    title="Bovigny"
    subtitle="[words title]"
    % poet=""
    composer="Sir Arthur Sullivan" % circa 1898
    arranger="arr Chris Angelico" % 2011-10-09
    % meter="" ??
    % piece="" ??
    copyright=\markup { \smaller "Original music copyright Robin Gordon-Powell - Used with permission" }
}

\score {
    <<
        \new ChordNames {
            \set chordChanges = ##t
            \transpose c c,
            \chordmode {
		s4.
		ef4 ef8 ef4 ef8 ef4 ef8 ef4 ef8 ef4 ef8 ef4 ef8 ef4 ef8 f4.:m
		f4:m f8:m f4:m f8:m f4:m f8:m f4:m f8:m f4:m f8:m f4:m f8:m f4:m f8:m bf4.:7
		bf:7 ef ef:maj c:m c:m7 af c:sus4 f:m bf4:7 f8:m
		% ef ef ef:dim ef ef ef:dim ef ef ef:dim ef ef ef:dim bf:7 bf:7 bf:7 ef ef ef bf bf bf
		ef4 ef8:dim ef4 ef8:dim ef4 ef8:dim ef4 ef8:dim bf8:7 bf4:7 ef4 ef8 bf4.
		% ef ef ef bf:7 bf:7 bf:7 c:dim7 c:dim7 c:dim7 bf4.:7(bf4:7) bf8:7 ef2.
		ef4 ef8 bf4.:7 c:dim7 bf4.:7~bf4:7 bf8:7 ef2.
            }
        }
        \new Staff <<
            \set Staff.midiInstrument = "acoustic grand"
            \key ef \major
            \time 6/8
            \tempo "" 4 = 120
            \new Voice = "sops" \relative f' {
                s4.
                \voiceOne
		bf8(g) f ef4 g8 bf4 c8 d4(ef8) d4 c8 bf4 g8 ef(f) g f4.
		c'8(af) g f4 af8 c4 d8 ef4 f8 ef4 d8 c4 af8 f(af) c bf4.
		bf8(c) d ef4 g,8 g4 g8 g4. ef'8(d) ef ef4 f,8 f4 f8 f4.
		af8(d) c bf4 c8 bf4 c8 bf4 c8 bf4 c8 d d4 ef ef8 f4.
		% g4 g8 f4.(ef d~d4) d8 ef2.
		g4 g8 <af f>4.( <a ef> <bf d,> ~ <bf d,>4) d,8 ef2. % incl Jacqueline's line
            }
            \addlyrics { \lyr \lyricmode {
                !As to that we would re- ply, as 'tis plain to ev- 'ry eye;
		!That these gos- sips did not blun- der when they said her hair was red!
		!And we fan- cy, bye and bye, She will weep and won- der why,
		!Men should choose to go a- woo- ing when they ne- ver think to wed,
		!think to wed, to wed!
            } }
            \new Voice = "alto" \relative f' {
                s4. % The same rest, but as a spacer so it doesn't print
                \voiceTwo
		bf8(g) f ef4 g8 bf4 c8 d4(ef8) d4 c8 bf4 g8 ef(f) g f4.
		c'8(af) g f4 af8 c4 d8 ef4 f8 ef4 d8 c4 af8 f(af) c bf4.
		af4 af8 g4 ef8 ef4 ef8 ef4. g4 g8 f4 f8 f4 f8 f4.
		af4 af8 g4 fs8 g4 fs8 g4 fs8 g4 fs8 f f4 ef ef8 bf'4.
		bf4 bf8 bf4.(a af~af4) af8 g2.
            }
        >>
        \new Staff <<
            \clef bass
            \key ef \major
            \new Voice = "tenor" \relative c' {
                r4.
                \voiceOne
		bf8(g) f ef4 g8 bf4 c8 d4(ef8) d4 c8 bf4 g8 ef(f) g f4.
		c'8(af) g f4 af8 c4 d8 ef4 f8 ef4 d8 c4 af8 f(af) c bf4.
		bf4 bf8 ef4 ef8 d4 d8 c4. c4 c8 c4 ef8 ef4 ef8 ef4.
		ef4 ef8 ef4 ef8 ef4 ef8 ef4 ef8 ef4 ef8 bf8 bf4 bf bf8 d4.
		ef4 ef8 f4.(gf f~f4) f8 ef2.
            }
            \new Voice = "bass" \relative c' {
                s4.
                \voiceTwo
		bf8(g) f ef4 g8 bf4 c8 d4(ef8) d4 c8 bf4 g8 ef(f) g f4.
		c'8(af) g f4 af8 c4 d8 ef4 f8 ef4 d8 c4 af8 f(af) c bf4.
		bf4 bf8 ef4 ef8 d4 d8 c4. bf4 bf8 af4 af8 g4 g8 af4.
		f4 f8 bf4 a8 bf4 a8 bf4a8 bf4 a8 af af4 g g8 f4.
		ef4 ef8 d'4.(c bf~bf4) bf8 ef,2.
            }
        >>
    >>
    \layout { }
    % \midi { \context { \ChordNames \remove Note_performer } } % Stop chords from sounding in the MIDI
    \midi { } % Sound the chords
}
