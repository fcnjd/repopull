#!/bin/bash
for repo in */.git
do
    cd $repo/..;
    echo "$repo";
    git pull;
    cd ..
done
echo "all git repositories in this folder have been pulled"
