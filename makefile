# These ones get uploaded to rosuav.com/hymns/
live=Roseleaf.pdf LetHerGo.pdf LetHerGo2.pdf AndinTruth.pdf Variables.pdf Bovigny.pdf Mirlemont.pdf Mirlemont2.pdf \
HeavenOpen.pdf BackToMe.pdf
# These ones don't.
all=$(live) Gracious.pdf OrgRoseleaf.pdf AndinTruthOrig.pdf TurnThineEyes.pdf \
OWalyWaly.pdf non-free/PowerOfTheCross.pdf StCatherine.pdf JesuJoy.pdf ICanButTell.pdf non-free/SpeakOLord.pdf \
non-free/AliceMRTheme.pdf

all: $(all)

upload: $(live:%.pdf=upload/%)

%.pdf: %.ly
	lilypond -fpdf -fpng -dresolution=120 $<

upload/%: %.pdf
	upl $*|ftp -n gideon.kepl.com.au
	echo . >upload/$*
