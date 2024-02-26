@echo off
echo This option backs up all the files in your removable disk in a selected directory
echo Please enter the destination directory
set /p destination=
xcopy %drive%\. %destination%
pause
