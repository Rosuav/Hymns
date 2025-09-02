\version "2.24.0"
% Let Her Go, by Sir Arthur Sullivan
\include "Hymnal.ly"

\header
{
    title="Let Her Go"
    subtitle="All the Way My Savior Leads Me"
    % poet=""
    composer="Sir Arthur Sullivan" % circa 1898
    arranger="arr Chris Angelico" % 2010-12-09
    poet="Fanny Crosby"
    % composer="Sir Arthur Sullivan arr Chris Angelico"
    % meter=""
    opus="\"Let Her Go\""
}

\score {
    <<
        \new ChordNames {
            \set chordChanges = ##t
            \transpose c c,
            \chordmode {
                \override ChordName.font-size = #-2
                s2.
                % My hope is in
                g2 g4:dim g2. g g g ef:dim e:m a:m
                % No merit
                a:m a:m a:m a:m d:7 d4:7 g c g d d g
            }
        }
        \new Staff <<
            \set Staff.midiInstrument = "acoustic grand"
            \key g \major
            \time 3/4
            \tempo "" 4 = 120
            \new Voice = "sops" \relative f' {
                r2
                \voiceOne
                d8 d d4. d8 df e d4 d g8 a b4. as8 b g d2   % All the
                g8 a b4 b b8 b b4 b b8 b b4. c8 gs b a2     % Can I
                e8 e e4. e8 ds fs e4 e a8 b c4. b8 c a e2   % Heavenly
                e8 g fs4 d' d8 d d4 g, a8 c b g a4 fs g2.    % For I
            }
            % Words by Fanny Crosby, courtesy of Cyber Hymnal (also see Mission Praise #22).
            \addlyrics { \lyr \lyricmode {
                \override LyricText.font-size = #-1
		\set stanza = #"1."
                !All the way my Sav- ior leads me;
                !what have I to ask be- side?
                !Can I doubt His ten- der mer- cy,
                !who through life has been my guide?
                !Heav'n- ly peace, di- vi- nest com- fort,
                !here by faith in Him to dwell!
                !For I know what- e'er be- fall me,
                !Je- sus do- eth all things well.
            } }
            %{ \addlyrics { \lyr \lyricmode {
                \override LyricText.font-size = #-1
                !All the way my Sav- ior leads me,
                !Cheers each wind- ing path I tread;
                !Gives me grace for ev- ery tri- al,
                !Feeds me with the liv- ing Bread.
                !Though my wea- ry steps may fal- ter,
                !And my soul a- thirst may be,
                !Gush- ing from the Rock be- fore me,
                !Lo! A spring of joy I see.
            } }
            \addlyrics { \lyr \lyricmode {
                \override LyricText.font-size = #-1
                !All the way my Sav- ior leads me
                !O the full- ness of His love!
                !Per- fect rest to me is pro- mised
                !In my Fa- thers house a- bove.
                !When my spi- rit, clothed im- mor- tal,
                !Wings its flight to realms of day
                !This my song through end- less a- ges:
                !Je- sus led me all the way.
            } } %}
            \new Voice = "alto" \relative f' {
                \voiceTwo
                s2
                b,8 b b4. b8 bf bf b4 b b8 b d4. d8 d d b2
                b8 b d4 d d8 d ds4 ds ds8 ds e4. e8 e e e2
                c8 c c4. c8 c c c4 c c8 c e4. e8 e e e2
                e8 e d4 fs fs8 fs fs4 g e8 e d d d4 d d2.       % Last note should be e2, but to make this resolve without the repeat, fudge it to a G major chord.
            }
        >>
        \new Staff <<
            \clef bass
            \key g \major
            \new Voice = "tenor" \relative c' {
                r2
                \voiceOne
                g8 g g4. g8 g g g4 g g8 g g4. g8 g g g2
                b8 b b4 b b8 b b4 b b8 b c4. c8 c c c2
                a8 a a4. a8 a a a4 a a8 a a4. c8 c c c2
                c8 c c4 c c8 c c4 b c8 c d b c4 c b2.
            }
            \new Voice = "bass" \relative c' {
                \voiceTwo
                s2
                g,8 g g4. g8 g g g4 g g8 g g4. g8 g g g2
                g'8 g g4 g g8 g g4 g g8 g c,4. c8 c c c2
                c8 c a4. a8 a a a4 a a8 a a'4. a8 a a a2
                a8 a d,4 d d8 d d4 e a,8 a d d d4 d g,2.
            }
        >>
    >>
    \layout { }
    \midi { \context { \ChordNames \remove Note_performer } } % Stop chords from sounding in the MIDI
}

% Additional verses
\markup \fill-line {
\column {
"2. All the way my Savior leads me,"
"Cheers each winding path I tread;"
"Gives me grace for every trial,"
"Feeds me with the living Bread."
"Though my weary steps may falter,"
"And my soul a-thirst may be,"
"Gushing from the Rock before me,"
"Lo! A spring of joy I see."
}
\column {
"3. All the way my Savior leads me"
"O the fullness of His love!"
"Perfect rest to me is promised"
"In my Father's house above."
"When my spirit, clothed immortal,"
"Wings its flight to realms of day"
"This my song through endless ages:"
"Jesus led me all the way."
}
}
