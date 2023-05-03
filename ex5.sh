#!/bin/bash

# The bash environment variable $PS3 is the prompt used by select. Set it to a new value and you'll get a new prompt.
PS3="Select your option please: "


#We display a list of options preceded by numbers.
#We select "opt" in "set of options", and if the user entered number matches one of the positions, that command is executed.
select opt in DiskUsage Users Uptime Quit
do
    case $opt in
        "DiskUsage")
            echo "$(df)";;
        "Users")
           echo "$(who -H)";;
        "Uptime")
           echo "$(uptime)";;
        "Quit")
           echo "Exiting..."
           break;;
        *)
           echo "Invalid option";;
    esac
done