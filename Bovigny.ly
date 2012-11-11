% As to that, we would reply
% Words from RCH #574 or #193
\include "Hymnal.ly"

\header
{
    title="Bovigny"
    subtitle="Holy Spirit, Truth Divine"
    poet="Samuel Longfellow"
    composer="Sir Arthur Sullivan" % circa 1898
    arranger="arr Chris Angelico" % 2011-10-09 / 2011-12-18
    % meter="" ??
    % piece="" ??
    copyright=\markup { \smaller "Original music copyright Robin Gordon-Powell - Used with permission" }
}

\score {
    <<
        \new ChordNames {
            \set chordChanges = ##t
            \transpose ef bf,
            \chordmode {
		s4.
		ef4 ef8 ef4 ef8 ef4 ef8 ef4 ef8 ef4 ef8 ef4 ef8 ef4 ef8 f4.:m
		f4:m f8:m f4:m f8:m f4:m f8:m f4:m f8:m f4:m f8:m f4:m f8:m f4:m f8:m bf4.:7
		bf:7 ef ef:maj c:m c:m7 af c:sus4 f:m bf4:7 f8:m
		ef4 ef8:dim ef4 ef8:dim ef4 ef8:dim ef4 ef8:dim bf4.:7 ef4. bf4.~bf4:7 bf8:7 ef2.
            }
        }
        \new Staff <<
            \set Staff.midiInstrument = "acoustic grand"
            \key bf \major
            \time 6/8
            \tempo "" 4 = 120
            \new Voice = "sops" \transpose ef bf, \relative f' {
                r4.
                \voiceOne
		bf8(g) f ef4 g8 bf4 c8 d4(ef8) d4 c8 bf4 g8 ef(f) g f4.
		c'8(af) g f4 af8 c4 d8 ef4(f8) ef4 d8 c4 af8 f(af) c bf4.
		bf8(c) d ef4 g,8 g4 g8 g4. ef'8(d) ef ef4 f,8 f4 f8 f4.
		af8(d) c bf4 c8 bf4 c8 bf4(c8) bf4 c8 d4. ef4. f4.~f4
		d8 ef2.
            }
            \addlyrics { \lyr \lyricmode {
		\override LyricText #'font-size = #-1
		\set stanza = #"1."
                !Ho- ly Spi- rit, truth di- vine, dawn u- pon this soul of mine;
		!Word of God, and in- ward Light, wake my spi- rit, clear my sight.
		!Ho- ly Spi- rit, love di- vine, glow wi- thin this heart of mine;
		!Kin- dle ev- ery high de- sire; pe- rish self in Thy pure fire.
            } }
	    \addlyrics { \lyr \lyricmode {
		\override LyricText #'font-size = #-1
		\set stanza = #"2."
		!Ho- ly Spi- rit, power di- vine, fill and nerve this will of mine;
		!By Thee may I strong- ly live, brave- ly bear, and no- bly strive.
		!Ho- ly Spi- rit, right di- vine, king with- in my con- science reign;
		!Be my law and I shall be firm- ly bound, for- e- ver free.
            } }

            \new Voice = "alto" \transpose ef bf, \relative f' {
                s4. % The same rest, but as a spacer so it doesn't print
                \voiceTwo
		bf8(g) f ef4 g8 bf4 c8 d4(ef8) d4 c8 bf4 g8 ef(f) g f4.
		c'8(af) g f4 af8 c4 d8 ef4(f8) ef4 d8 c4 af8 f(af) c bf4.
		af4 af8 g4 ef8 ef4 ef8 ef4. g4 g8 f4 f8 f4 f8 f4.
		af4 af8 g4 fs8 g4 fs8 g4(fs8) g4 fs8 f4. ef4. bf'4.~bf4 af8 g2.
            }
        >>
        \new Staff <<
            \clef bass
            \key bf \major
            \new Voice = "tenor" \transpose ef bf, \relative c' {
                r4.
                \voiceOne
		bf8(g) f ef4 g8 bf4 c8 d4(ef8) d4 c8 bf4 g8 ef(f) g f4.
		c'8(af) g f4 af8 c4 d8 ef4(f8) ef4 d8 c4 af8 f(af) c bf4.
		bf4 bf8 ef4 ef8 d4 d8 c4. c4 c8 c4 ef8 ef4 ef8 ef4.
		ef4 ef8 ef4 ef8 ef4 ef8 ef4(ef8) ef4 ef8 bf4. bf d4.~d4 f8 ef2.
            }
            \new Voice = "bass" \transpose ef bf, \relative c' {
                s4.
                \voiceTwo
		bf8(g) f ef4 g8 bf4 c8 d4(ef8) d4 c8 bf4 g8 ef(f) g f4.
		c'8(af) g f4 af8 c4 d8 ef4(f8) ef4 d8 c4 af8 f(af) c bf4.
		bf4 bf8 ef4 ef8 d4 d8 c4. bf4 bf8 af4 af8 g4 g8 af4.
		f4 f8 bf4 a8 bf4 a8 bf4(a8) bf4 a8 af4. g f4.~f4 bf8 ef,2.
            }
        >>
    >>
    \layout { }
    % \midi { \context { \ChordNameVoice \remove Note_performer } } % Stop chords from sounding in the MIDI
    \midi { } % Sound the chords
}

% Additional verses
\markup \fill-line {
\column {
"3. Holy Spirit, peace divine, still this restless heart of mine;"
"Speak to calm this tossing sea, stayed in Thy tranquility."
"Holy Spirit, joy divine, gladden Thou this heart of mine;"
"In the desert ways I sing, 'Spring, O Well, forever spring!'"
}
}
