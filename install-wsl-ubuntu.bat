@echo off
echo Installing WSL 1 and Ubuntu on Windows...

REM Enable WSL feature
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

REM Enable the Virtual Machine Platform feature (required for WSL 2, optional for WSL 1)
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

REM Download and install Ubuntu
curl -L -o ubuntu.appx https://aka.ms/wsl-ubuntu-2004
PowerShell -Command "Add-AppxPackage -Path ubuntu.appx"

echo Installation complete. Restart your computer to finalize the installation.
