@echo off
cls
echo Formatting a disk erases all the contents of the disk 
echo What type of formatting would you like to perform
echo 1.Normal formatting
echo 2.Format and change the file system to FAT32
echo 3.Format and change the file system to exFAT
echo 4.Format and change the file system to NTFS
echo 5.Format just a portion of the disk
echo Please enter the number that corresponds to your choice
set /p formatinput=
if %formatinput%==1 format %drive% /q
if %formatinput%==2 goto format2
if %formatinput%==3 goto format3
if %formatinput%==4 goto format4
if %formatinput%==5 goto format5
if %formatinput%gtr5 goto format1.bat
:format11
cls
echo Normal formatting
format %drive% /q 
PAUSE
goto menu
:format2
cls
echo formatting the drive and changing the file system to FAT32
format %drive% /q /fs:FAT32
pause
goto menu
:format3
cls
echo formatting the drive and changing the file system to exFAT
format %drive% /q /fs:exFAT
pause
goto menu
:format4
cls
echo formatting the drive and changing the file system to NTFS
format %drive% /q /fs:NTFS
pause
goto menu
:format5
echo Please enter the size of the portion of the disk you would like to format
set /p size=
format %drive% /q size:%size%
pause
goto menu