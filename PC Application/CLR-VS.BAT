@echo off
@echo 正在清除请等待......

if exist "Debug\*.exe" (
copy "Debug\*.exe"
)

if exist "Debug" ^
rd "Debug" /s /q  

if exist "ipch" ^
rd "ipch" /s /q 
 
for /r . %%i in (*) do if /i "%%~xi"==".bak" del /a/q/f "%%i" 
for /r . %%i in (*) do if /i "%%~xi"==".sdf" del /a/q/f "%%i" 
for /r . %%i in (*) do if /i "%%~xi"==".pch" del /a/q/f "%%i"
for /r . %%i in (*) do if /i "%%~xi"==".ipch" del /a/q/f "%%i"  
for /r . %%i in (*) do if /i "%%~xi"==".pdb" del /a/q/f "%%i" 
for /r . %%i in (*) do if /i "%%~xi"==".tlog" del /a/q/f "%%i" 
for /r . %%i in (*) do if /i "%%~xi"==".idb" del /a/q/f "%%i" 
for /r . %%i in (*) do if /i "%%~xi"==".obj" del /a/q/f "%%i" 
for /r . %%i in (*) do if /i "%%~xi"==".res" del /a/q/f "%%i" 
for /r . %%i in (*) do if /i "%%~xi"==".ilk" del /a/q/f "%%i" 
for /r . %%i in (*) do if /i "%%~xi"==".log" del /a/q/f "%%i" 

setlocal enabledelayedexpansion

rem if not exist BackUp md BackUp


set path=%path%;%programfiles%\winrar
rem 采用上面路径方法或是下面将RAR.EXE 复制到系统目录下面
rem 必须先装WINRAR压缩软件 此例以RAR.EXE 3.93版本
rem if not exist "C:\WINDOWS\rar.exe" copy "C:\Program Files\WinRAR\rar.exe" "C:\WINDOWS"

rem rar a /r -e-s ^
rem "BackUp\%date:~0,10%_%time:~0,2%-%time:~3,2%_VS2010.bak"

rem Backup1.exe
rem Backup2.exe

@echo 清除已经完成
rem pause

exit


rem ---->ms 1S=1000 pause<----
