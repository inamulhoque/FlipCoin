#!/bin/bash -x

win=0
loss=0
while [[ $win -le 20 && $loss -lt 21 ]]
do
	val=$((RANDOM%2))
	if [ $val -eq 1 ]
	then
		((win++))
	else
		((loss++))
	fi
done

echo "Head wins : $win"
echo "Tail wins : $loss"

if [[ $win -gt $loss ]]
then
	echo "Head Wins by :"
	echo "$(($win - $loss))"
elif [[ $loss -gt $win ]]
then
	echo "Tail wins by :"
	echo "$(($loss - $win))"
elif [[ $win -eq $loss ]]
then
	echo "Tie"
	while [[ $win -eq $loss ]]
	do
		val2=$((RANDOM%2))
        	if [ $val2 -eq 1 ]
        	then
                	((win++))
        	else
                	((loss++))
        	fi
	done
	if [[ $win -gt $loss ]]
	then
        	echo "Head Wins by :"
        	echo "$(($win - $loss))"
	elif [[ $loss -gt $win ]]
	then
        	echo "Tail wins by :"
        	echo "$(($loss - $win))"
	fi

fi
