% Instant hymn file, just add content!
\include "Hymnal.ly"

\header
{
    title="[music title]"
    subtitle="[words title]"
    % poet=""
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
            }
        }
        \new Staff <<
            \set Staff.midiInstrument = "acoustic grand"
            \key c \major
            \time 4/4
            \tempo "" 4 = 120
            \new Voice = "sops" \relative f' {
                r2. % To start on an upbeat, put this _before_ the \voiceOne (otherwise it works fine, but prints badly)
                \voiceOne
            }
            \addlyrics { \lyr \lyricmode {
                !
            } }
            \new Voice = "alto" \relative f' {
                s2. % The same rest, but as a spacer so it doesn't print
                \voiceTwo
            }
        >>
        \new Staff <<
            \clef bass
            \key c \major
            \new Voice = "tenor" \relative c' {
                r2.
                \voiceOne
            }
            \new Voice = "bass" \relative c' {
                s2.
                \voiceTwo
            }
        >>
    >>
    \layout { }
    \midi { \context { \ChordNameVoice \remove Note_performer } } % Stop chords from sounding in the MIDI
}

% Additional verses
\markup \wordwrap-string #"
2. double-space

these lines
"
\markup \wordwrap-string #"
3.
"

