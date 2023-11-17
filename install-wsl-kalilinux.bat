@echo off
echo Installing WSL 1 and Kali Linux on Windows...

REM Enable WSL feature
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

REM Download and install Kali Linux
curl -L -o kalilinux.appx https://aka.ms/wsl-kali-linux
PowerShell -Command "Add-AppxPackage -Path kalilinux.appx"

echo Installation complete. Restart your computer to finalize the installation.
