\version "2.24.0"
% Beauty Stone new score, page 84
% lilypond -fpdf -fpng -dresolution=120 AndinTruth.ly
% Words from RCH #341
\include "Hymnal.ly"

\header
{
    title="And in Truth"
    subtitle="Soldiers of the Cross, Arise"
    % poet=""
    composer="Sir Arthur Sullivan" % circa 1898
    arranger="arr Chris Angelico" % 2011-09-02
    poet="William Walsham How"
    % meter=""
    % piece=""
    copyright=\markup { \smaller "Original music copyright Robin Gordon-Powell - Used with permission" }
}

\score {
    <<
        \new ChordNames {
            \set chordChanges = ##t
            \transpose c c,
            \chordmode {
                s2.
                c4 c c c c c c c
                a:m a:m a:m f f:aug d:m a d:m
                d:m g:7 b:m c c d:m b:m c:7
                c:7 f f c c c ef:dim g:7 g:7 c2. s4
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
                c8 d e8. d16 e8 g c4 c,8 d e8. d16 e8 g c4
                a8 b c8. d16 c8 b a8.(b16) a8 g f g e g f4
                d8 d a'8. g16 fs8 g g4 c,8 e a8. g16 fs8 g g4
                e8 c c'8. b16 c8 a g8.(fs16) g8 e g4 a b g c2.
                \oneVoice
                r4
            }
            \addlyrics { \lyr \lyricmode {
	        \set stanza = #"1."
                !Sol- diers of the Cross, a- rise!
                !Gird you with your ar- mour bright;
                !Migh- ty are your e- ne- mies,
                !hard the bat- tle ye must fight.
                !O'er a faith- less fal- len world
                !Raise your ban- ner in the sky;
                !Let it float there wide un- furled;
                !Bear it on- ward; lift it high.
            } }
            %{
            \addlyrics { \lyr \lyricmode {
                !'Mid the homes of want and woe,
                !Stran- gers to the li- ving word,
                !Let the Sa- viour's he- rald go,
                !Let the voice of hope be heard.
                !To the wea- ry and the worn
                !Tell of realms where sor- rows cease;
                !To the out- cast and for- lorn
                !Speak of mer- cy and of peace.
            } }
            \addlyrics { \lyr \lyricmode {
                !Guard the help- less; seek the strayed;
                !Com- fort trou- bles; ba- nish grief;
                !In the might of God ar- rayed,
                !Scat- ter sin and un- be- lief.
                !Be the ban- ner still un- furled,
                !Still un- sheathed the Spi- rit's sword,
                !Till the king- doms of the world
                !Are the King- dom of the Lord!
            } }
            %}
            \new Voice = "alto" \relative f' {
                s2. % The same rest, but as a spacer so it doesn't print
                \voiceTwo
                c8 b c8. b16 c8 d e4 c8 b c8. b16 c8 d e4
                e8 e e8. e16 e8 e f8.(f16) f8 e d e  cs e  d4
                d8 d d8. d16 d8 d g4 c,8 e f8. f16 f!8 f e4
                e8 c a'8. gs16 a8 f e8.(ds16) e8 c c4 fs f f e2.
            }
        >>
        \new Staff <<
            \clef bass
            \key c \major
            \new Voice = "tenor" \relative c {
                r2.
                \voiceOne
                e8 g g8. g16 c8 b g4 e8 g g8. g16 c8 b g4
                c8 c c8. c16 c8 c c8.(c16) cs8 cs d a a a a4
                d8 d b8. b16 b8 b c4 c8 c b8. b16 b8 b bf4
                bf8 bf a8. c16 c8 c c8.(c16) c8 c e4 ef d d c2.
                \oneVoice
                r4
            }
            \new Voice = "bass" \relative c {
                s2.
                \voiceTwo
                e8 g c,8. c16 c8 c c4 e8 g c,8. c16 c8 c c4
                c'8 b a8. a16 a8 g f8.(f16) a8 a d, d a a d4
                d8 d f8. f16 f8 f e4 e8 e d8. d16 d8 d c4
                c8 c f8. f16 f8 f g8.(g16) g8 g g4 g g g c,2.
            }
        >>
    >>
    \layout { }
    \midi { \context { \ChordNames \remove Note_performer } } % Stop chords from sounding in the MIDI
}
% Additional verses
\markup \fill-line {
\column {
"2. 'Mid the homes of want and woe,"
"Strangers to the living word,"
"Let the Saviour's herald go,"
"Let the voice of hope be heard."
"To the weary and the worn"
"Tell of realms where sorrows cease;"
"To the outcast and forlorn"
"Speak of mercy and of peace."
}
\column {
"3. Guard the helpless; seek the strayed;"
"Comfort troubles; banish grief;"
"In the might of God arrayed,"
"Scatter sin and unbelief."
"Be the banner still unfurled,"
"Still unsheathed the Spirit's sword,"
"Till the kingdoms of the world"
"Are the Kingdom of the Lord."
}
}
