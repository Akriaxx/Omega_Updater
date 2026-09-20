@echo off
setlocal

set "APP_EXE=%~dp0AKRX - Addon Manager.exe"
set "DOTNET_EXE=%ProgramW6432%\dotnet\dotnet.exe"
if not defined ProgramW6432 set "DOTNET_EXE=%ProgramFiles%\dotnet\dotnet.exe"
set "DOTNET_DOWNLOAD=https://dotnet.microsoft.com/download/dotnet/10.0/runtime?cid=getdotnetcore&runtime=windowsdesktop&arch=x64"

if not exist "%DOTNET_EXE%" goto MissingRuntime
"%DOTNET_EXE%" --list-runtimes | findstr /R /C:"Microsoft.WindowsDesktop.App 10\." >nul
if errorlevel 1 goto MissingRuntime

if not exist "%APP_EXE%" goto MissingApplication
start "" "%APP_EXE%"
exit /b 0

:MissingRuntime
echo.
echo AKRX - Addon Manager necessite Microsoft .NET 10 Desktop Runtime x64.
echo La page officielle Microsoft va s'ouvrir.
echo Installez le Desktop Runtime x64, puis relancez ce fichier.
echo.
pause
start "" "%DOTNET_DOWNLOAD%"
exit /b 1

:MissingApplication
echo.
echo AKRX - Addon Manager.exe est introuvable.
echo Conservez ce lanceur dans le meme dossier que l'application.
pause
exit /b 2
