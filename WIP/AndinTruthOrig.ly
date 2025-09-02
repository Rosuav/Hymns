\version "2.24.0"
% Instant hymn file, just add content!
% Beauty Stone new score, page 84
\include "../Hymnal.ly"

\header
{
    title="And In Truth"
    % subtitle=""
    % poet=""
    % composer=""
    % arranger="arr Chris Angelico" % 2011-09-02
    % meter=""
    % piece="" ??
}

\score {
    <<
        \new ChordNames {
            \set chordChanges = ##t
            \transpose c c,
            \chordmode {
                r2.
                c4 c c c c c c c
                a:m a:m a:m f f:aug d:m a d:m
                d:m g:7 b:m c c d:m b:m c:7
                c:7 f f c c d:m d:m c
                c a:m a:m c c d:7 d:7 g
                g c c f:dim e:m c ef:dim g:7 g:7 c2. r4
            }
        }
        \new Staff <<
            \set Staff.midiInstrument = "acoustic grand"
            \key c \major
            \time 4/4
            \tempo "" 4 = 100
            \new Voice = "sops" \relative f' {
                r2. % To start on an upbeat, put this _before_ the \voiceOne (otherwise it works fine, but prints badly)
                \voiceOne
                c8 d e8. d16 e8 g c4 c,8 d e8. d16 e8 g c8.
                g16 a8 b c8. d16 c8 b a8. b16 a8 g f(g) e(g) f4
                d8 d a'8. g16 fs8 g g4 c,8 e a8. g16 fs8 g g4
                e8 c c'8. b16 c8 a g8. fs16 g8 e a gs a f e4
                c'8 d e8. d16 c8 a g4 c8 d e8. d16 c8 a g4
                g8 f' f e d c b a b c c4 a b g c2.
                \oneVoice
                r4
            }
            \addlyrics { \lyr \lyricmode {
                !And in truth, if that be so, it is plain they do not grow
                !the fai- rest maids in Flan- ders where these sim- ple shep- herds dwell.
                !Or per- chance for aught we know, it was ve- ry long a- go
                !When this mai- den first dis- co- vered that she loved her- self so well.
                !Or per- chance for aught we know, it was ve- ry long a- go
                !When this mai- den first dis- co- vered that she loved her- self so well.
            } }
            \new Voice = "alto" \relative f' {
                s2. % The same rest, but as a spacer so it doesn't print
                \voiceTwo
                c8 b c8. b16 c8 d e4 c8 b c8. b16 c8 d e8.
                e16 e8 e e8. e16 e8 e f8. f16 f8 e d(e) cs(e) d4
                d8 d d8. d16 d8 d g4 c,8 e f8. f16 f8 f e4
                e8 c a'8. gs16 a8 f e8. ds16 e8 c f e f d c4
                g'8 g a8. a16 a8 a g4 g8 g fs8. fs16 fs8 fs g4
                g8 g g g g g gs a g f g4 fs f f e2.
            }
        >>
        \new Staff <<
            \clef bass
            \key c \major
            \new Voice = "tenor" \relative c {
                r2.
                \voiceOne
                e8 g g8. g16 c8 b g4 e8 g g8. g16 c8 b g8.
                c16 c8 c c8. c16 c8 c c8. c16 cs8 cs d(a) a4 a
                d8 d b8. b16 b8 b c4 c8 c b8. b16 b8 b bf4
                bf8 bf a8. c16 c8 c c8. c16 c8 c b b b b c4
                e8 e c8. d16 e8 e e4 e8 e c8. c16 c8 c f4
                f8 d c c g c c c c c e4 ef d d c2.
                \oneVoice
                r4
            }
            \new Voice = "bass" \relative c {
                s2.
                \voiceTwo
                e8 g c,8. c16 c8 c c4 e8 g c,8. c16 c8 c c8.
                c'16 c8 b a8. a16 a8 g f8. f16 a8 a d,4 a d
                d8 d f8. f16 f8 f e4 e8 e d8. d16 d8 d c4
                c8 c f8. f16 f8 f g8. g16 g8 g g g g g c,4
                c'8 c fs,8. fs16 fs8 fs g4 g8 g a8. a16 a8 a b4
                b8 b c c e, e f f e d g4 g g g c2.
            }
        >>
    >>
    \layout { }
    % \midi { }
    \midi { \context { \ChordNames \remove Note_performer } } % Stop chords from sounding in the MIDI
}

