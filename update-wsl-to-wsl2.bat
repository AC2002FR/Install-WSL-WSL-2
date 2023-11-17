@echo off
echo Updating all WSL distributions to WSL 2...

REM Enable the Virtual Machine Platform feature
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

REM Set WSL 2 as the default version for new installations
wsl --set-default-version 2

REM Update all existing WSL distributions to WSL 2
for /f "tokens=*" %%i in ('wsl --list --quiet') do (
    echo Updating %%i to WSL 2...
    wsl --set-version "%%i" 2
)

echo All distributions have been updated to WSL 2.
echo Please restart your computer to finalize the updates.
