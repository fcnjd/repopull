#!/bin/bash
FILEPATH=$PWD;
LOGPATH="$FILEPATH"/pull-all-git-repos.log;
#echo "$LOGPATH";
for repo in */.git
do
    cd $repo/..;
    echo "$repo" >> "$LOGPATH" 2>&1;
    git pull >> "$LOGPATH" 2>&1;
    cd ..;
done
echo "all git repositories in this folder have been pulled successfully. Please read the logfile located in $LOGPATH for more information.";
