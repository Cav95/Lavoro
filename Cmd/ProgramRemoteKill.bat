@echo off
:loop
IF EXIST H:\pippo.txt taskkill /IM EXCEL.EXE /F
DEL H:\pippo.txt
goto loop