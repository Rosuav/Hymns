\version "2.24.0"
% Beauty Rules, by Sir Arthur Sullivan
% lilypond -fpdf -fpng -dresolution=120 BeautyRules.ly
\include "Hymnal.ly"

\header
{
    title="Beauty Rules"
    % subtitle=""
    % poet=""
    composer="Sir Arthur Sullivan" % circa 1898
    arranger="arr Chris Angelico" % 2011-02-24
    poet=""
    % composer="Sir Arthur Sullivan arr Chris Angelico"
    % meter=""
    opus="\"Beauty Rules\""
}

\score {
    <<
        \new ChordNames {
            \set chordChanges = ##t
            \transpose c c,
            \chordmode {
                \override ChordName.font-size = #-2
                r2 r4
                f4
            }
        }
        \new Staff <<
            \set Staff.midiInstrument = "acoustic grand"
            \key bf \major
            \time 4/4
            \tempo "" 4 = 120
            \new Voice = "sops" \relative f' {
                r2 r4
                \voiceOne
                f4 c' bf c bf8 bf ef2.
                f,4 c' bf c bf8 bf ef2.
                f,4 d' f,8 f e4 f8 g f4
                f' f8([ef]) d c d4. bf8 bf4(a) bf2
            }
            % Original words by Pinero/Carr
            \addlyrics { \lyr \lyricmode {
                \override LyricText.font-size = #-1
                !With soft eyes ha- zel or grey,
                !With tres- ses gol- den or brown,
                !'Tis Beau- ty that rules ye to- day,
                !Ye Bur- ghers of Mir- le- mont town!
            } }
            \new Voice = "alto" \relative f' {
                \voiceTwo
                s2 s4
                f f f f f8 f a2.
                f4 f f f f8 f a2.
                f4 f d8 d d4 d8 d f4
                af g g8 g f4. f8 f2 f2
            }
        >>
        \new Staff <<
            \clef bass
            \key bf \major
            \new Voice = "tenor" \relative c' {
                r2 r4
                \voiceOne
                f,4 ef' d ef d8 d c2.
                f,4 ef' d ef d8 d c2.
                f,4 bf bf8 bf bf4 bf8 bf bf4
                bf bf ef8 ef d4. d8 ef2 d2
            }
            \new Voice = "bass" \relative c' {
                \voiceTwo
                s2 s4
                f, f f f f8 f f2.
                f4 f f f f8 f f2.
                f4 bf, d8 d f4 bf8 bf d,4
                f ef ef8 ef f4. f8 f2 bf,2
            }
        >>
    >>
    \layout { }
    \midi { \context { \ChordNames \remove Note_performer } } % Stop chords from sounding in the MIDI
}

