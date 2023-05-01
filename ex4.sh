#!/bin/bash

if [ -e ethansmells.txt ]; then
    echo "File exists."
else
    echo "File does not exist."
fi

if [ -w ethansmells.txt ]; then
    echo "You have permission to edit this file."
else
    echo "You do not have permission to edit this file."
fi


