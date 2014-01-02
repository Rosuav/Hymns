% Roseleaf, by Sir Arthur Sullivan
% Needs some words to be written for it. 7.9.7.9 meter.
\include "Hymnal.ly"

\header
{
    title="Roseleaf"
    % subtitle=""
    % poet=""
    composer="Sir Arthur Sullivan"
    % arranger=""
    % meter=""
    % piece="" ??
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
            \key c \major
            \time 6/4
            \tempo "" 4 = 180
            \new Voice = "sops" \relative f' {
                \stemUp
                \slurUp
                r2.
                g2 g4 c2 g4 g a g c2.           % When the
                d2 d4 e ds e e d c f2.(b,4)     % do we ask
                r4 g d' d d cs d e d2.          % If honey
                c2 c4 b c b a b c d2.           % know we
                e2 b4 c2 c4 b a b c2.           % When the
                d2 d4 e d c e d c g'2.(f4)      % do we
                r2 c4 c c b c d c2.             % Nay though
                cs2 cs4 d2. e2 e4 f1            % though the
                g4 fs e ds e e d c b            % yet we
                a gs a b c c2. b2 b4 c1         % yet we
            }
            \addlyrics { \lyr \lyricmode {
                !
            } }
            \new Voice = "alto" \relative f' {
                \stemDown
                \slurDown
                r2.
                g2 g4 c2 g4 g a g c2.
                f,2 f4 e ds e e d c f2.(f4)
                r4 g g g g g g g g2.
                fs2 fs4 g g g fs fs fs g2.
                gs2 gs4 a2 a4 gs fs gs a2.
                bf2 bf4 bf bf bf bf bf bf bf2.(a4)
                r2 a4 a a gs gs gs a2.          % Nay though
                bf2 bf4 a2. a2 a4 a1            % though the
%                a4 a4                           % yet we
            }
        >>
        \new Staff <<
            \clef bass
            \key c \major
            \new Voice = "tenor" \relative c' {
                \stemUp
                \slurUp
                r2.
                g2 g4 c2 g4 g a g c2.
                b2 b4 c c c g g c b2.(g4)
                r4 g b b b as as as b2.
                a2 a4 d d d c c c b2.
                b2 e4 e2 e4 e e e e2.
                g2 g4 g g g c, c c c2.(c4)
                r2 c4 c c d c b c2.             % Nay though
                g'2 g4 f2. c2 c4 d1             % though the
%                d4 d4                           % yet we
            }
            \new Voice = "bass" \relative c' {
                \stemDown
                \slurDown
                r2.
                g2 g4 c2 g4 g a g c2.
                g2 g4 c, c c e e e d2.(g4)
                r4 g f f f e e e f2.
                ef2 ef4 d d g g g g g2.
                e2 e4 a2 a4 a a a a2.
                g2 g4 c c c c, c c f2.(f4)
                r2 f4 f f f f f f2.             % Nay though
                f2 f4 f2. as2 as4 d1            % though the
%                d4 d4                           % yet we
            }
        >>
    >>
    \layout { }
    \midi { \context { \ChordNameVoice \remove Note_performer } } % Stop chords from sounding in the MIDI
}

