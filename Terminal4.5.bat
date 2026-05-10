@echo off
cls
echo Terminal 4.5
echo Copyright (C) KankaStudyo. All right saved.
echo  Created by: KankaStudyo
echo.        Type a command..
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
if "%command%"=="emergency cmd alert" (
    start
    echo emergency cmd alert!!!!!!!!!!! CMD IS NOW USABLE
    goto menu
)
if "%command%"=="help" (
    echo All cmds here:
    echo.
    echo 1-emergency cmd alert - runs cmd
    echo 2-run hackhost - runs hackhost
    echo 3-run hackpost - runs hackpost
    echo 4-/delete "file path here" - delete the filepath
    echo 5-/copyfile "file path here" - copy the file
    echo 6-/create folder - create file on desktop
    set/p wait1=
   cls
)
if "%command%"=="KDweb" (
    start "" "C:\Users\YakupK\Desktop\KDweb_FINAL.html"
    set/p wait1= KDweb started
)
if "%command%"=="saycode: .for. KDweb" (
    echo Here is your code for KDweb: kSdaRkenter19
    set/p wait1=
)
echo "%command%" is invalid command. Please try again.
goto menu
