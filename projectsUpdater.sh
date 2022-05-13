#!/bin/bash
#script to automate project updating and pushing to github.com
#I start from inside the bashProject directory
# wok in progress
token=$(cat ~/token.txt)
cd ..
variable=$( echo $(ls))
#echo $variable
for i in $( echo $(ls))
do
    cd $i
    git add *
    git commit -m "automated update"
    git branch -m main
    git push push -u origin main
    git pull  origin main
    cd ..
done