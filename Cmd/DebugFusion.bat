@echo off
#pushd "\\SRVUT\Transfert\MATTIA CAVINA\"
:: Ottieni la data corrente
for /f %%i in ('date /t') do set data=%%i
for /f %%i in ('time /t') do set ora=%%i

:: Rimuovi il carattere "/"
set data=%data:/=%
set ora=%ora::=%

:: Stampa la data formattata
echo Data corrente: %data%
:loop
set "programma=PDM_WCF_CLIENT.exe"
tasklist /fi "imagename eq %programma%" | find /i "%programma%" >nul
if errorlevel 1 copy "C:\Fusion DeBug\DeBuG.txt" "\\SRVUT\ut\Documenti Vari UT\Documenti PDM Fusion\DebugMonitoring\%username%_%ora%_%data%_Debug.txt" & goto exit
goto loop
:exit
#popd

