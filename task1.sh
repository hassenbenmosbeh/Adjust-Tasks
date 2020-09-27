#!/bin/bash

#function that Generate random number between 1 and 10 with range 1 
get_rand()
{
	x=$(shuf -i 1-10 -n 1)
	return $x
}

count=0 # declare variable to incremente it until 9
tab=()  # declare table where to stock random number once time
while [ $count -le 9 ] 
do
get_rand
	x=$?
	for ((j=0; j<10 ; j++));
	do
		  if  [[  $x ==  ${tab[$j]} ]]; then
		  	cond=0
		  	break
		  else
		  	cond=1		
		  fi
	done
		if [[ $cond == 1 ]]; then
			tab[$count]=$x
			count=$(( count+1 ))
		fi
	done
	echo "${tab[*]}" # display all numbers
