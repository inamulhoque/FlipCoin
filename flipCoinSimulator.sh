#!/bin/bash -x

val=$((RANDOM%2))
if [ $val -eq 1 ]
then
echo "It's a Head"
else
echo "It's Tail"
fi
