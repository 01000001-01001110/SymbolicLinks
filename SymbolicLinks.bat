:: Script Information Follows
:: Written by - Alan Newingham
:: Date - 4/15/2019
:: Makes Symbolic Links so you can attach any directory on the local system to onedrive.
:: Run this as the user, as a standard account
:: Stumbled across this while looking for a solution to include files in OneDrive sync without copying them from their original location.

:BEGIN
@cls
@echo off
setlocal

:: Starting the Symbolic Link creation.
:: This sets the variable %un% to the username running this script. 

set un=%username%
:: Uses %un% to append the directory within Onedrive.
:: This was a suggestion by JohnS. Works out really well. This way the backups are already done to the users profile name within onedrive.
set SLL=%UserProfile%\OneDrive \%un%

:: I am using "call" here to be fancy. There's other ways of doing this.

call :CSLL
call :CSL Desktop
call :CSL Documents
call :CSL Music
call :CSL Pictures
call :CSL Videos
goto :EndScript

:: Here's some function sexiness...

:CSLL
:: Verifying the directory exists or not and outputs that when it does.
echo Check to see if "%SLL%" is available...
if exist "%SLL%" (
    echo "%SLL%" was found.
    echo.
    goto :eof
) else (
    echo "%SLL%" was not found.
    md "%SLL%"
    echo.
    goto :eof
)

:CSL
echo Check to see if "%SLL%\%1" is available...
if exist "%SLL%\%1" (
    echo "%1" was found.
    echo.
    goto :eof
) else (
    echo "%1" was not found.
    mklink /J "%SLL%\%1" "%UserProfile%\%1"
    echo.
    goto :eof
)

:EndScript
echo End
endlocal
pause
exit