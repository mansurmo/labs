#!/bin/bash

x=$1
y=$2

s=$(($x+$y))
d=$(($x-$y))
p=$(($x*$y))

echo -n "$s $d $p "

if [[ $y -eq 0 ]]
then
echo '#'

elif [[ $x -eq 0 ]]
then
echo '0.00'

elif [[ $p -lt 0 ]]
then
	if [[ $x**2 -lt $y**2 ]]
	then
	echo -n '-0'
	echo "scale=2;-($x/$y)" |bc 
	else
	echo "scale=2;$x/$y" |bc 
	fi
elif [[ $x**2 -lt $y**2 ]]
then
echo -n '0'
echo "scale=2;$x/$y" |bc 
else 
echo "scale=2;$x/$y" |bc 

fi
