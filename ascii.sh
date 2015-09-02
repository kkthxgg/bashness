#!/bin/bash
echo "enter a number, about less than 20"  
read var 
echo " "
for i in $(seq 1 $((2*$var)))
do
	(( endS = i%var ))	
	if [ "$i" -gt "$var" ]
	then
		(( endS = 2*var - i ))
	fi
	for j in $(seq 1 $(( $endS )))
	do
		printf "#" 
	done 
printf "\n"
done
