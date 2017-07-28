#!/bin/bash

# Small script that builds automatically modified packages

for i in $(git diff-tree --no-commit-id --name-only -r HEAD | grep ".nuspec"); do
	echo "Updating $i"
	echo "==========="
	( cd $(dirname $i); choco pack $(basename $i); nuget push *.nupkg $APIKEY -source https://www.myget.org/F/sming )
done

