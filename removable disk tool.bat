@echo off
echo Welcome to the David's Quick command wizard
pause
color 2
echo This edition deals majorly with removable disks(flash disks and memory cards)
echo So now insert the flash disk into the computer and enter the disk letter eg F:,G:,I: etc
set /p disk=
:menu
cls
echo What operation would you like to perform on the removable disk?
echo 1.Format
echo 2.Check the disk for errors
echo 3.Backup all the files from the disk to your PC
echo 4.Delete files from the disk
echo 5.Display a list of folders on the disk
echo Please enter the number that corresponds to your choice
set /p menuinput=
if %menuinput%==1 call Format1.bat
if %menuinput%==2 chkdsk %drive%
if %menuinput%==3 call Backup.bat
if %menuinput%==4 call Delete.bat
if %menuinput%==5 tree %drive%
if %menuinput% GTR 5 goto menu
pause