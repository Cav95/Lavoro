@echo off
pushd "\\SRVUT\Transfert\MATTIA CAVINA\"
:loop
set "programma=PDM_WCF_CLIENT.exe"
tasklist /fi "imagename eq %programma%" | find /i "%programma%" >nul
if errorlevel 1 explorer.exe .\Fuggite.mp4 & goto exit
goto loop
:exit
popd

