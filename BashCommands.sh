#!/bin/bash

PS3="Select your option please: " 

echo "   * Bash Commads *  "

select lng in List_Files Show_Free_Disk_Space Show_System_Path Display_Command_History Backup_Files Quit
do

    case $lng in
        "List_Files")
            echo $(ls);;

        "Show_Free_Disk_Space")
           echo $(df);;

        "Show_System_Path")
           echo $(pwd);;

         "Display_Command_History")
           echo $(cat ~/.bash_history);;
           
         "Backup_Files")
           echo "Please enter directory to back up:"
           read FolderName
           $cat >BackupFolder
           cp -R $FolderName backup;;

         "Quit")
           echo "Goodbye!"
           break;;
        *)
           echo "Invalid"
           echo "1) List_Files
2) Show_Free_Disk_Space
3) Show_System_Path
4) Display_Command_History
5) Backup_Files
6) Quit";;
    esac
done