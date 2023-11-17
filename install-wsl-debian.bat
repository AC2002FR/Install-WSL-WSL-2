@echo off
echo Installing WSL 1 and Debian on Windows...

REM Enable WSL feature
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

REM Download and install Debian
curl -L -o debian.appx https://aka.ms/wsl-debian-gnulinux
PowerShell -Command "Add-AppxPackage -Path debian.appx"

echo Installation complete. Restart your computer to finalize the installation.
