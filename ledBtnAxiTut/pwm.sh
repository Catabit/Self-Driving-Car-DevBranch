#!/bin/bash
for j in `seq 0 9`;
do
	echo $j
	for i in `seq 70 100`;
	do
		poke 0x43c20000 $i
		usleep 50000
	done
	usleep 50000
done


