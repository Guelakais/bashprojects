#!/bin/bash
#script to automate project updating and pushing to github.com
#I start from inside the bashProject directory
token=$(cat ~/token.txt)
cd ..
variable=$( echo $(ls))
#echo $variable
for i in $( echo $(ls))
do
    cd $i
    #git init #to init the repository
    git add *
    git commit -m "automated update"
    git branch -m main
    git remote add origin https://github.com/Guelakais/$i.git # to add the source of the github repo
    git remote set-url origin https://Guelakais:$token@github.com/Guelakais/$i.git
    git push push -u origin main
    git pull  origin main $i # downloads from origin branch
    cd ..
done