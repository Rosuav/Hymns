# These ones get uploaded to rosuav.com/hymns/
live=Roseleaf.pdf LetHerGo.pdf LetHerGo2.pdf AndinTruth.pdf Variables.pdf Bovigny.pdf Mirlemont.pdf
# These ones don't.
all=$(live) Gracious.pdf OrgRoseleaf.pdf AndinTruthOrig.pdf HeavenOpen.pdf

all: $(all)

upload: $(live:%.pdf=upload/%)

%.pdf: %.ly
	lilypond -fpdf -fpng -dresolution=120 $<

upload/%: %.pdf
	upl $*|ftp -n gideon.kepl.com.au
	echo . >upload/$*
