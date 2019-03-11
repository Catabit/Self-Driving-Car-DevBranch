#!/bin/bash

vivadoProject=${1%/}
target=$2

if [ -z $vivadoProject ]; then
        echo "Usage: $0 <vivado project name> <apps/modules> app1 app2 app3 .."
        exit 1
fi

if [ ! -d $vivadoProject ]; then
	echo "$vivadoProject is invalid"
	exit 1
fi

if [ -z $2 ]; then
	echo "Specify target: apps/modules. See usage."
	exit 1
fi


if [ -z $3 ]; then
	echo "Nothing to do"
	exit 1
fi


for i in "${@:3}"; do
	echo
	if [ ! -d "$vivadoProject"/"$vivadoProject".sdk ]; then
		echo "$vivadoProject"/"$vivadoProject".sdk is invalid
		exit 1
	fi

	current="$vivadoProject"/"$vivadoProject".sdk/$i

	if [ -e $current ]; then
		if [ ! -d ./project-spec/meta-user/recipes-$target/"$i" ]; then
			echo "Petalinux app $i does not exist, skipping"
			continue			
		fi

		current="$current"/src
		echo "Working on app $i"

		for f in "$current"/*; do
			if [ -e $f ]; then
				echo "Linking $f"
				ln -fs ../../../../../$f ./project-spec/meta-user/recipes-$target/"$i"/files/.
			fi
		done
	else
		echo "Project $i does not exist in $vivadoProject.sdk"
		continue
	fi
	
done
