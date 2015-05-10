#!/bin/bash
IFS=$'\n'
FILES=./*dat
#looping on all the data files
for f in $FILES
do
	#initialize array
	declare -a myarray
	# Load file into array.
	let i=0
	while IFS=$'\n' read -r line_data; do
		myarray[i]="${line_data}"
		    ((++i))
	done < $f
	# executing the badgerbadger script
	bash ./badgerbadger.sh "${myarray[0]}" "${myarray[1]}" "${myarray[2]}"
done


