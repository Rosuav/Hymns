% Roseleaf, by Sir Arthur Sullivan
\include "Hymnal.ly"

\header
{
    title="Roseleaf"
    subtitle="How Vast the Benefits Divine"
    % poet=""
    composer="Sir Arthur Sullivan" % circa 1898
    arranger="arr Chris Angelico" % 2009-12-23
    % composer="Sir Arthur Sullivan arr Chris Angelico"
    % meter=""
    % piece="" ??
}

\score {
    <<
        \new ChordNames {
            \set chordChanges = ##t
            \transpose c c,
            \chordmode {
                \override ChordName #'font-size = #-2
                r2. r2.
                % (How) vast the
                r r r d:7 g g d:7 d:7
                % (We) are redeemed
                d:7 d:dim7 d:7 e:dim7 d a:7 d b
                % (But) not for works
                e:m b e:m d:m g:7 g:7 g:7 c
                % (has) God decreed
                c b c b g:dim7 g d:7 g
            }
        }
        \new Staff <<
            \set Staff.midiInstrument = "acoustic grand"
            \key g \major
            \time 6/4
            \tempo "" 4 = 180
            \new Voice = "sops" \transpose c g, \relative f' {
                r2. r2
                \voiceOne
                g4 c2 g4 g(a) g c2 c4 d2        % How vast
                d4 e(ds) e e(d) c f2.(b,2)      % which we
                g4 d'2 d4 cs(d) e d2 d4 c2      % We are re
                c4 b4(c) b a(b) c d2.(e2)       % and called
                b4 c2 c4 b(a) b c2 c4 d2        % But not for
                d4 e(d) c e(d) c g'2.(f2)       % or shall here
                c4 c2 c4 b(c) d c2 c4 b(a)      % hath God de
                gs a(b) c c2. b2. c2.           % salvation to
                % c4 c2 c4 b(c) d c2              % hath God de
                % b4 a(b) c c2 c4 b2 b4 c2.~c     % salvation to
            }
            % Lyrics courtesy of Cyber Hymnal, http://nethymnal.org/htm/h/v/hvasttbd.htm
            \addlyrics { \lyr \lyricmode {
                \override LyricText #'font-size = #-2
                !How vast the be- ne- fits di- vine
                !which we in Christ po- ssess!
                !We are re- deemed from guilt and shame
                !and called to ho- li- ness.
                !But not for works which we have done,
                !or shall here- aft- er do,
                % !hath God de- creed on sin- ful men
                !has God de- creed on sin- ful ones    %%% From Rejoice! 95. Do not publish.
                !sal- va- tion to be- stow.
            } }
            \addlyrics { \lyr \lyricmode {
                \override LyricText #'font-size = #-2
                !The glo- ry, Lord, from first to last,
                !is due to You a- lone;
                !none to our- selves are we to take,
                !or rob You of Your crown.
                !Our glo- rious Sure- ty un- der- took
                !to sa- tis- fy for man,
                !and grace was giv'n to us in Him
                !be- fore the world be- gan.
            } }
            \addlyrics { \lyr \lyricmode {
                \override LyricText #'font-size = #-2
                !This is Your will, that in Your love
                !we al- ways should a- bide;
                !that earth and hell should not pre- vail
                !to turn Your Word a- side.
                !Not one of all the cho- sen ones
                !shall fail to heav'n at- tain,
                !en- joy on earth the pur- posed grace
                !and then with Je- sus reign.
            } }
            \new Voice = "alto" \transpose c g, \relative f' {
                \voiceTwo
                s2. s2
                g4 c2 g4 g(a) g c2 c4 f,2           % How vast
                f4 g(g) g c,(c) g' f2.(f2)          % which we
                g4 g2 g4 g(g) g g2 g4 fs2           % We are re
                fs4 g(g) g fs(fs) fs g2.(gs2)       % and called
                gs4 a2 a4 gs(fs) gs a2 a4 bf2       % But not for
                bf4 bf(bf) bf bf(bf) bf bf2.(a2)    % or shall here
                a4 a2 a4 gs(gs) gs a2 a4 f(f)       % hath God de
                e ds(ds) ds g2. g2. g2.             % salvation to bestow
            }
        >>
        \new Staff <<
            \clef bass
            \key g \major
            \new Voice = "tenor" \transpose c g, \relative c' {
                r2. r2
                \voiceOne
                g4 c2 g4 g(a) g c2 c4 b2
                b4 c(c) c g(g) c b2.(g2)
                g4 b2 b4 as(as) as b2 b4 a2
                a4 d(d) d c(c) c b2.(b2)
                e4 e2 e4 e(e) e e2 e4 g2
                g4 g(g) g c,(c) c c2.(c2)
                c4 c2 c4 d(c) b c2 c4 d(d)           % hath God decreed on sinful men
                d c(c) ds e2. f2. e2.                % salvation to bestow
            }
            \new Voice = "bass" \transpose c g, \relative c' {
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
    \midi { \context { \ChordNameVoice \remove Note_performer } } % Stop chords from sounding in the MIDI
}

