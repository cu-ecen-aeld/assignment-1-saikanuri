#!/bin/bash
echo $1
echo $2

if [ $# -lt 2 ]
then
    echo invalid argument
    exit 1
fi

if ! [ -d $1 ]
then
    echo Not a directory
    exit 1    
fi

x=`eval grep -r $2 $1 -l | wc -l`
y=`eval grep -r -I $2 $1 | wc -l`
echo "The number of files are $x and the number of matching lines are $y"
