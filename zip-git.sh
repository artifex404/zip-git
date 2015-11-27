#!/bin/bash

IGNORED="*.git* bower_components node_modules *.sass-cache* *.idea* .DS_Store"

help() { 
    echo -e "Zip-git recursively zips the folder ignoring some unwanted files for a production environment.\n"
    echo -e "The default action makes a zip file of the folder specified, excluding the following folders:\n.git, bower_components, node_modules, .sass-cache, .idea\n\n and ignoring the following files:\n.DS_Store.\n"
    echo -e "Usage: zip-git [-options] folder"
    echo -e "-i\tRead .gitignore file in the folder specified and ignore all matched elements"
    echo -e "-h\tShow this help"
    exit 0
}

while test $# -gt 0
do
    case "$1" in
        -h) help
            ;;
        -i) GITIGNORE=1
            ;;
        --help) help
    		;;
        -help) help
			;;
        --*) help
            ;;
        *) FOLDER=$1
            ;;
    esac
    shift
done

if [ -d "$FOLDER" ]; then
	if [ -n "$GITIGNORE" ]; then
		echo -e "Ignoring matched gitignore items"
		FILE="$FOLDER/.gitignore"
		if [ -f "$FILE" ]; then
			echo -e "Gitignore file found."
			while IFS='' read -r LINE; do
			  [[ "$LINE" =~ ^#.*$ ]] && continue
			  IGNORED+=" $FOLDER/*${LINE}*"
			done < "${FILE}"
		fi
	fi

	echo -e "Creating package.zip..."
	zip -q -r package.zip $FOLDER -x $IGNORED
	echo -e "Zip file created."
fi

if [ ! -d "$FOLDER" ]; then
  help
fi
