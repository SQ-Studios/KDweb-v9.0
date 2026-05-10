@echo off
cls
echo Terminal 4.5
echo.
echo Created by: KankaStudyo
echo.    Type a command..
:menu
set /p command="> "
if "%command%"=="/create folder" (
    mkdir "%USERPROFILE%\Desktop\NewFolder"
    echo Folder created on Desktop.
    goto menu
)
if "%command:~0,9%"=="/copyfile" (
    set "filepath=%command:~10%"
    copy "%filepath%" "%USERPROFILE%\Desktop"
    echo File copied to Desktop.
    goto menu
)
if "%command:~0,6%"=="/delete" (
    set "filepath=%command:~7%"
    del "%filepath%"
    echo File deleted.
    goto menu
)
if "%command%"=="run hackpost" (
    start "" "C:\Users\YakupK\Desktop\KankaTech Apps\Hackpost.bat.lnk"
    echo hackpost is opened.
    goto menu
)
if "%command%"=="run hackhost" (
    start "" "C:\Users\YakupK\Desktop\KankaTech Apps\HackHost.bat"
    echo hackhost is opened.
    goto menu
)
echo "%command%" is invalid command. Please try again.
goto menu
