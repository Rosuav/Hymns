# These ones get uploaded to rosuav.com/hymns/
live=Roseleaf.pdf LetHerGo.pdf LetHerGo2.pdf AndinTruth.pdf Variables.pdf Bovigny.pdf Mirlemont.pdf Mirlemont2.pdf \
HeavenOpen.pdf BackToMe.pdf HailToTheLord.pdf
# These ones don't.
all=$(live) Gracious.pdf Martyrdom.pdf Dormouse.pdf \
non-free/PowerOfTheCross.pdf StCatherine.pdf JesuJoy.pdf WIP/ICanButTell.pdf non-free/SpeakOLord.pdf \
non-free/AliceMRTheme.pdf non-free/OChurchArise.pdf WIP/ICanButTell2.pdf non-free/FreelyFreely.pdf non-free/FromTheSqualor.pdf \
non-free/IveGotADream.pdf WIP/ICanButTell3.pdf non-free/ManOfSorrowsLambOfGod.pdf non-free/JesusThankYou.pdf WIP/BowThyHead.pdf
# all=$(patsubst %.ly,%.pdf,$(filter-out Template.ly Hymnal.ly,$(wildcard *.ly)))

all: $(all)

upload: $(live:%.pdf=upload/%)

%.pdf: %.ly
	cd $(@D) && lilypond -fpdf -fpng -dresolution=120 $(<F)

upload/%: %.pdf
	upl $*|ftp -n gideon.kepl.com.au
	echo . >upload/$*
