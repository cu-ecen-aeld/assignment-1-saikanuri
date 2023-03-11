#!/bin/bash

if [ $# -lt 2 ]
then
    echo "Invalid arguments"
    exit 1
fi

echo $2 >> $1
