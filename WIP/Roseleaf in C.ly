\version "2.24.0"
% Roseleaf, by Sir Arthur Sullivan
% Needs some words to be written for it. 7.9.7.9 meter.
\include "Hymnal.ly"

\header
{
    title="Roseleaf"
    % subtitle=""
    % poet=""
    composer="Sir Arthur Sullivan" % circa 1898
    arranger="arr Chris Angelico" % 2009-12-23
    % meter=""
    % piece="" ??
}

\score {
    <<
        \new ChordNames {
            \set chordChanges = ##t
            \transpose c c,
            \chordmode {
                r2. r2.
                % (How) vast the
                r r r g:7 c c g:7 g:7
                % (We) are redeemed
                g:7 g:dim7 g:7 a:dim7 g d:7 g e
                % (But) not for works
                a:m e a:m g:m c:7 c:7 c:7 f
                % (has) God decreed
                f e f d:m c:dim7 c g:7 c
            }
        }
        \new Staff <<
            \set Staff.midiInstrument = "acoustic grand"
            \key c \major
            \time 6/4
            \tempo "" 4 = 180
            \new Voice = "sops" \transpose c c \relative f' {
                r2. r2
                \voiceOne
                g4 c2 g4 g(a) g c2 c4 d2        % That man has perfect blessedness
                d4 e(ds) e e(d) c f2.(b,2)      % who does not walk astray
                g4 d'2 d4 cs(d) e d2 d4 c2      % in counsel of ungodly men,
                c4 b4(c) b a(b) c d2.(e2)       % nor stands in sinners' way.
                b4 c2 c4 b(a) b c2 c4 d2        % Who does not sit in scorner's chair,
                d4 e(d) c e(d) c g'2.(f2)       % but placing his delight
                c4 c2 c4 b(c) d c2 c4 b(a)      % upon God's law, he meditates
                gs a(b) c c2. b2. c2.           % on His law day and night.
                % c4 c2 c4 b(c) d c2              % upon God's law, he meditates
                % b4 a(b) c c2 c4 b2 b4 c2.~c     % on His law day and night.
            }
            % Rejoice! #436
            %{ \addlyrics { \lyr \lyricmode {
                !That man has per- fect bless- ed- ness
                !who does not walk a- stray
                !in coun- sel of un- god- ly men,
                !nor stands in sin- ners' way.
                !Who does not sit in scor- ner's chair,
                !but pla- cing his de- light
                !u- pon God's law, he me- di- tates
                !on His law day and night.
            } }
            \addlyrics { \lyr \lyricmode {
                !He shall be like a tree that grows
                !near by the ri- ver side,
                !which in its sea- son yields its fruit,
                !and green its leaves a- bide.
                !And all he does shall pro- sper well
                !the wi- cked are not so
                !but they are li- kened to the chaff
                !which wind drives to and fro.
            } }
            \addlyrics { \lyr \lyricmode {
                !In judg- ment there- fore shall not stand
                !such as un- god- ly are;
                !nor in the assem- bly of the just
                !shall wi- cked men ap- pear.
                !Be- cause the way of god- ly men
                !un- to the Lord is known,
                !where- as the way of wi- cked men
                !shall quite be o- ver- thrown.
            } } %}
            % Rejoice! #95
            \addlyrics { \lyr \lyricmode {
                !How vast the be- ne- fits di- vine
                !which we in Christ po- ssess!
                !We are re- deemed from guilt and shame
                !and called to ho- li- ness.
                !But not for works which we have done,
                !or shall here- aft- er do,
                !has God de- creed on sin- ful ones
                !sal- va- tion to be- stow.
            } }
            \new Voice = "alto" \transpose c c \relative f' {
                \voiceTwo
                s2. s2
                g4 c2 g4 g(a) g c2 c4 f,2           % How vast
                f4 g(g) g c,(c) g' f2.(f2)          % which we
                g4 g2 g4 g(g) g g2 g4 fs2           % We are re
                fs4 g(g) g fs(fs) fs g2.(gs2)       % and called
                gs4 a2 a4 gs(fs) gs a2 a4 bf2       % But not for
                bf4 bf(bf) bf bf(bf) bf bf2.(a2)    % or shall here
                a4 a2 a4 gs(gs) gs a2 a4 f(f)       % has God de
                e ds(ds) ds g2. g2. g2.             % salvation to bestow
            }
        >>
        \new Staff <<
            \clef bass
            \key c \major
            \new Voice = "tenor" \transpose c c \relative c' {
                r2. r2
                \voiceOne
                g4 c2 g4 g(a) g c2 c4 b2
                b4 c(c) c g(g) c b2.(g2)
                g4 b2 b4 as(as) as b2 b4 a2
                a4 d(d) d c(c) c b2.(b2)
                e4 e2 e4 e(e) e e2 e4 g2
                g4 g(g) g c,(c) c c2.(c2)
                c4 c2 c4 d(c) b c2 c4 d(d)           % has God decreed on sinful ones
                d c(c) ds e2. f2. e2.                % salvation to bestow
            }
            \new Voice = "bass" \transpose c c \relative c' {
                \voiceTwo
                s2. s2
                g4 c2 g4 g a g c2 c4 g2
                g4 c,(c) c e(e) e d2.(g2)
                g4 f2 f4 e(e) e f2 f4 ef2
                ef4 d(d) g g(g) g g2.(e2)
                e4 a2 a4 a(a) a a2 a4 g2
                g4 c(c) c c,(c) c f2.(f2)
                f4 f2 f4 f(f) f f2 f4 f(f)           % has God de
                f fs(fs) fs g2. g2. c,2.             % salvation to bestow
            }
        >>
    >>
    \layout { }
    \midi { \context { \ChordNames \remove Note_performer } } % Stop chords from sounding in the MIDI
}

