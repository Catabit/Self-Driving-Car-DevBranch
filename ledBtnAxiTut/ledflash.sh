#!/bin/bash

for b in `seq 0 9`;
do
        for g in `seq 0 9`;
        do
                for r in `seq 0 9`;
        	do
                	poke 0x43C10000 0x00"$b"0"$g"0"$r"0		
			usleep 10000
        	done    
        done    
done




