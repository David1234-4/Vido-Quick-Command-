@echo off
echo Welcome to the David's Quick command wizard
pause
color a7
echo This edition deals mahorly with removable disks(flash disks and memory cards)
echo So now insert the flah disk into the computer and enter the disk letter eg F:,G:,I: etc
set /p disk=
echo What operation would you like to performon the removable disk?
1.Format
2.Check the disk for errors
3.Backup all the files from the disk to your PC
4.Delete files from the disk
5.Display a list of folders on the disk
Please enter the number that corresponds to your choice
set /p menuinput=
if %menuinput%==1 goto Format1
if %menuinput%==2 goto checkdisk
if %menuinput%==3 goto Backup
if %menuinput%==4 goto Delete 
if %menuinput%==5 goto tree1
if %menuinput% GTR 5 goto menu
:menu
echo 1.Format
echo 2.Check the disk for errors
echo 3.Backup all the files from the disk to your PC
echo 4.Delete files from the disk
echo 5.Display a list of folders on the disk
echo Please enter the number that corresponds to your choice
:Format1
echo Formatting a disk erases all the contents of the disk 
echo What type of formatting would you like to perform
echo 1.Normal formatting
echo 2.Format and change the file system to FAT32
echo 3.Format and change the file system to exFAT
echo 4.Format and change the file system to NTFS
echo 5.Format just a portion of the disk
echo Please enter the number that corresponds to your choice
set /p formatinput=
if %formatinput%gtr5 goto format1
if %formatinput%==1 goto format11
if %formatinput%==2 goto format2
if %formatinput%==3 goto format3
if %formatinput%==4 goto format4
if %formatinput%==5 goto format5
:format11
cls
echo Normal formatting
format %drive% /q 
:format2
