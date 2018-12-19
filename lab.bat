@echo off 
chcp 65001 | echo off
cd.>inf.txt 
cd.>log1.txt 
copy nul > log.txt 
tasklist > log.txt  
for /f "tokens=1-6" %%i IN (log.txt) do echo %%i %%j  >> log1.txt 
if "%1" equ "" ( echo Variable not set >> inf.txt ) else ( for /f "tokens=1,2 delims=" %%f in ('findstr /r /n "%1" log1.txt') do echo %%f >> inf.txt )
del log1.txt
del log.txt