# First, install chocolatey in order to automate the packages installation
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Avoid confirmation to install packages
choco feature enable -n allowGlobalConfirmation
# Install the programs using chocolatey package manager, must be an administrative shell
choco install -y 7zip bitwarden adobereader epicgameslauncher steam-client git vscode jre8 microsoft-teams brave python qbittorrent rpi-imager spotify telegram whatsapp vlc croc nmap filezilla

# Install windows package manager to install apps from microsoft store
Add-AppxPackage "https://github.com/microsoft/winget-cli/releases/download/v1.3.2091/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"
Add-AppxPackage "https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx"

# Install store apps with winget command
winget install ubuntu
winget install "windows terminal"
winget install discord

# Install WSL2.0
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux