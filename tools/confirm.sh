#!/bin/bash
read -p "Are you sure you want to make $1? " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
	exit 1
else
	exit 0
fi
