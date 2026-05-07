@echo off
setlocal

set "APP_DIR=%~dp0"
set "APP_EXE=%APP_DIR%OmegaHubUpdater.exe"
set "DOTNET_DOWNLOAD=https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/runtime-desktop-10.0.7-windows-x64-installer"

where dotnet >nul 2>nul
if errorlevel 1 goto MissingRuntime

dotnet --list-runtimes | findstr /R /C:"Microsoft.WindowsDesktop.App 10\." >nul
if errorlevel 1 goto MissingRuntime

start "" "%APP_EXE%"
exit /b 0

:MissingRuntime
echo.
echo Omega Hub Updater necessite Microsoft .NET 10 Desktop Runtime x64.
echo.
echo La page officielle Microsoft va s'ouvrir.
echo Installez le runtime, puis relancez ce fichier.
echo.
pause
start "" "%DOTNET_DOWNLOAD%"
exit /b 1
