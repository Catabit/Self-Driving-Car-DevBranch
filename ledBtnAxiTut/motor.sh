#!/bin/bash
for j in `seq 128 1024`;
do
	echo $j
	poke 0x43c20000 $j
	usleep 50000
done


