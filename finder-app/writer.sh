#!/bin/bash
#Author: Arnaud Simo

# Vérifie si le nombre d'arguments est correct
if [ $# -ne 2 ]; then
	echo ++++++++++ Error+++++++++++++++++++
    echo "Usage: writer.sh <writefile> <writestr>"
    exit 1
fi

writefile=$1
writestr=$2
fichier="$writefile"
path=${writefile%/*}
filename=${writefile##*/}

#Debug
#echo filename=$filename
#echo writestr=$writestr
#echo fichier="$writefile"
#echo path=${writefile%/*}
#echo "Le chemin sans le nom du fichier est : $path"

#si chemin n existe pas cree le
if [ ! -d "$path" ]; then
	echo "+++ Path does not exists. ++++"
	echo "+++ We will create it. +++++++"
	mkdir -p "$path"
	touch "$fichier"
	echo "$writestr"  >  "$fichier"
	echo Creates file:
	echo "            $writefile"
	echo "            with content:"
	echo "            $writestr"
else
	touch "$fichier"
	echo "$writestr"  >  "$fichier"
	echo Creates file:
	echo "            $writefile"
	echo "            with content:"
	echo "            $writestr"
fi



