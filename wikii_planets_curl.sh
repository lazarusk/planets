#!/bin/bash

# $i variable
# [ -s file] true if file exists AND is bigger than 0

for i in Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune
do
	curl http://en.wikipedia.org/wiki/$i > "$i.txt"
	if [ -s $i.txt ]
		then
			echo "$i.txt file has text" 
git add $i.txt
git commit -m "$i wiki added"		
	fi
done