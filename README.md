# Install-WSL-WSL-2
Install WSL or WSL 2 for Windows 10 &amp; 11
https://learn.microsoft.com/fr-fr/windows/wsl/ 

# Prerequisites
Requires Windows 10 versions 2004 and later (build 19041 and above) or Windows 11.
For earlier versions, refer to the manual installation page.

# Installing the WSL Command
1) Open PowerShell or Command Prompt in administrator mode.
2) Enter the command wsl --install 
3) Restart the computer.
This command automatically installs the necessary features to run WSL and installs Ubuntu as the default distribution (which can be changed).

# Modifying the Default Installed Linux Distribution
Change the distribution with wsl --install -d <Distribution Name>.
List available distributions: wsl --list --online or wsl -l -o.

# Configuring Your Linux User Information
After installation, set up a user account and password.

# Configuration and Best Practices
Follow the "Best Practices for Setting Up a WSL Development Environment" guide for advice on user configuration, using WSL commands, and more.

# Checking the WSL Version
List distributions and check the WSL version with wsl -l -v.
Set the default version to WSL 1 or 2: wsl --set-default-version <Version#>.

# Upgrading from WSL 1 to WSL 2
New installations with wsl --install default to WSL 2.
Change version with wsl --set-version <distro name> 2.
