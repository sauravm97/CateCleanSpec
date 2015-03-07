ORIGIN=~/Downloads/spec-*
DESTINATION=/Users/franklinschrans/Dropbox/Documents/University/Specifications

COURSES[112]="Hardware"
COURSES[113]="Architecture"
COURSES[120]="Programming"
COURSES[130]="Databases"
COURSES[140]="Logic"
COURSES[141]="ReasoningAboutPrograms"
COURSES[142]="DiscreteMathematics"
COURSES[161]="Laboratory"

find ~/Downloads/spec-* | while read line; do
  FILENAME="${line##*/}"
  COURSE="${FILENAME:5:3}"

  FOLDER=$DESTINATION/${COURSES[COURSE]}
  mkdir -p $FOLDER
  mv $line $FOLDER
done
