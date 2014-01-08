% Include file for all in the Ros Hymnal
% Tip: Make bitmapped output with lilypond -fpng foo.ly
% Make it 300dpi (or any other figure) with lilypond -fpng -dresolution=300 foo.ly

% Do I need this in every top-level file, or just here? Or both?
\version "2.12.2"

\pointAndClickOff
\include "english.ly"
#(set-default-paper-size "a4")

\paper
{
	oddFooterMarkup = \markup { \column {
		\fill-line { \fromproperty #'header:copyright }
		\fill-line { \smaller "From Rosuav's Hymns, http://rosuav.com/hymns/ - rendered by GNU Lilypond" }
	} }
}

%{
    TODO: Make a parser that takes a set of verses like this:

    2. Foo bar fum
    Asdf qwer zxcv

    3. Hello world
    This is a test

    4. You get
    the idea

    and turns them into

    \markup \wordwrap-string #"
    2. Foo bar fum

    Asdf qwer zxcv
    "
    \markup \wordwrap-string #"
    3. Hello world

    This is a test
    "
    \markup \wordwrap-string #"
    4. You get

    the idea
    "

    which will then format correctly.
%}

% For each lyric element that begins with '!', change it to begin with '\n'.
#(define (bang2slashn lst) (
    cond ((null? lst) 0)
    (else (begin
        (if (equal? (ly:music-property (car lst) 'name) 'LyricEvent) (let ((txt (ly:music-property (car lst) 'text)))
            (if (equal? (string-ref txt 0) #\!) (begin
            ; Debugging display
            ; (display (ly:music-property (car lst) 'name)) (display " - ") (display txt) (newline)
            ; Prepend a newline instead of the exclamation mark - works for both MIDI Karaoke and page layout
            (ly:music-set-property! (car lst) 'text (string-append "\n" (substring txt 1 (string-length txt))))
        ))))
        (bang2slashn (ly:music-property (car lst) 'elements))
        (bang2slashn (cdr lst))
    ))
))
% Call the above recursive function
lyr=#(define-music-function (parser location lyrics) (ly:music?)
    (bang2slashn (ly:music-property lyrics 'elements))
    lyrics
)

