#!/bin/bash

FILES=./*dat
for f in $FILES
do
	declare -a myarray

	# Load file into array.
	let i=0
	while IFS=$'\n' read -r line_data; do
		myarray[i]="${line_data}"
		    ((++i))
	done < $f

	bash ./badgerbadger.sh "${myarray[0]}" "${myarray[1]}" "${myarray[2]}"
done


