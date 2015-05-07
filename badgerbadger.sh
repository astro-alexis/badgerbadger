#!/bin/bash 

nt=$(echo $1_$2|tr -d ' ');
echo "you just badgerbadgered:" $nt
cp original_badge.svg badge_$nt.svg
sed -i 's/name1/'"$1"'/' badge_$nt.svg
sed -i 's/name2/'"$2"'/' badge_$nt.svg
sed -i 's/institute/'"$3"'/' badge_$nt.svg
inkscape badge_$nt.svg --export-pdf=badge_$nt.pdf
