\version "2.24.0"
% Laine's Prayer
% F  C7     F     C7     F F7   G7
% Mother of Jesu, at thy feet I cry
%   ??               Dm
% I do but crave for love,
%      ??    F
% That so my heart may live
%      Am G7   C
% Else what am I?
%         F           Bb
% [forte] Nay, and if God above
% Bb   F7        Bb
% Hath naught of love to give
% Daug                  G7
% [/forte] I fain would die
% C7  F     C7 F    C7         F
% Mother of Jesu, I fain would die!
% lilypond -fpdf -fpng -dresolution=120 LainePrayer.ly
\include "Hymnal.ly"

\header
{
    title=""
    % subtitle=""
    % poet=""
    % composer=""
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
                f c:7 f c:7 f f:7 g2:7
                g:m7 d:m g:m7 f a4:m g:7 c2
                % forte
                f bf bf4 f:7 bf2
                % piano
                d:aug g:7 c4:7 f c:7 f c2:7 f
            }
        }
        \new Staff <<
            \set Staff.midiInstrument = "acoustic grand"
            \key f \major
            \time 2/4
            \tempo "" 4 = 60
            \new Voice = "sops" \relative f' {
                \voiceOne
                f4 g8 bf a g16(f) c'8 g a([d c]) bf16(a) g4.
                g8 g e' d c d4(c8) a g(e') d(c) c a16([b]) c8
                f e4. d8 c4. r8
                % forte
                f4 e8 a, e' d d4 d c8 f, c' bf bf4
                r8 bf a d, g4(d')\fermata
                % piano
                g, a8 c g4 a8 c
                \tempo "rall" 4 = 50
                g16(a f a) g4 f4. s8
            }
            %{\addlyrics { \lyr \lyricmode {
                !Mo- ther of Je- su, at thy feet I cry,
                !I do but crave for love,
                !That so my heart may live
                !Else what am I?
                !Nay, and if God a- bove
                !Hath naught of love to give,
                !I fain would die!
                !Mo- ther of Je- su, I fain would die!
            } } %}
            \new Voice = "alto" \relative f' {
                \voiceTwo
            }
        >>
        \new Staff <<
            \clef bass
            \key f \major
            \new Voice = "tenor" \relative c' {
                \voiceOne
            }
            \new Voice = "bass" \relative c' {
                \voiceTwo
            }
        >>
    >>
    \layout { }
    % \midi { \context { \ChordNames \remove Note_performer } } % Stop chords from sounding in the MIDI
    \midi { }
}

