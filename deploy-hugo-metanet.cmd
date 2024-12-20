@echo off
rem --  03.08.2023 | 20.12.2024 hpsof
rem --  version mit keys
rem --  idee : hugo-webseite auf metanet deployen fuer shoptest.creathera.ch


rem if ""%1"" == """" goto needParam
setlocal
set user=sofimchsch
set host=80.74.150.2
set port=2121
set rpfad=/creathera.ch/shoptest
set localdeployfolder=public
set ppfad=g:/tools/putty
PATH=%ppfad%;%PATH%
set pubkeyfile=rsa-key-20230802-metanet-thinkpad.ppk

rem if ""%1"" == ""0"" goto deploy
rem call write-current-date.cmd

:deploy
echo.  set commit-info git...
call set_git_commit_info.cmd
echo.  mit hugo version in local public erstellen :
if exist %localdeployfolder% rmdir /q /s %localdeployfolder%
call hugo.cmd --baseURL=https://shop.creathera.ch/ --environment=production

echo.  inhalt deploy-verz. loeschen auf remote host :
plink.exe -l %user% -i %ppfad%/%pubkeyfile%  -ssh %host%   -P %port%  rm -rf %rpfad%/*.*

echo.  aktuellen build auf remote host kopieren :
pscp -p  -i %ppfad%/%pubkeyfile% -P %port%  -r %localdeployfolder%/*.*    %user%@%host%:%rpfad%   
goto finito

:needParam
echo. bitte parameter eingeben fuer erzeugung datei mit current-date:
echo.   0 = nicht erzeugen, d.h. hpsof hat datum auf vertretungs-start-ANZEIGE gesetzt
echo.   1 = erzeugen
echo.

:finito
echo. *** finito ***
echo.
