#!/bin/bash

# The bash environment variable $PS3 is the prompt used by select. Setting to a new value will cause a new prompt.
PS3="Select your option please: " 

echo "   * Bash Commads *  "


#We display a list of options preceded by numbers.
#We select "opt" in "set of options", and if the user entered number matches one of the positions, that command is executed.
select lng in List_Files Show_Free_Disk_Space Show_System_Path Display_Command_History Backup_Files Quit
do

    case $lng in
        "List_Files")
        #echo the ls command, to list files.
          echo $(ls);;

        "Show_Free_Disk_Space")
        #echo the df command, to list free disk space.
          echo $(df);;

        "Show_System_Path")
        #echo the pwd command, to show current path.
          echo $(pwd);;

         "Display_Command_History")
         #echo the result of using the cat command on the file storing command history.
           echo $(cat ~/.bash_history);;
           
         "Backup_Files")
         #enter the file name to be backed up, and back up recursively to BackupFolder.
           echo "Please enter directory to back up:"
           read FolderName
           $cat >BackupFolder
           cp -R $FolderName BackupFolder;;

         "Quit")
         #Exit program.
           echo "Goodbye!"
           break;;
        *)
           echo "Invalid"
          #If the selected option is invalid, we display the menu options again.
           echo "1) List_Files
2) Show_Free_Disk_Space
3) Show_System_Path
4) Display_Command_History
5) Backup_Files
6) Quit";;
    esac
done