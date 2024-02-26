@echo off
cls
echo Please enter the name of the file that you want to delete 
set /p deletefile=
del %drive%\*%deletefile%* /s
PAUSE