# First, install chocolatey in order to automate the packages installation
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Avoid confirmation to install packages
choco feature enable -n allowGlobalConfirmation
# Install the programs using chocolatey package manager, must be an administrative shell
choco install 7zip bitwarden foxitreader epicgameslauncher steam-client git vscode microsoft-teams firefox python qbittorrent rpi-imager spotify telegram whatsapp vlc cura-new croc

# Install windows package manager to install apps from microsoft store
Invoke-WebRequest -Uri "https://github.com/microsoft/winget-cli/releases/download/v-0.3.11102-preview/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.appxbundle" -OutFile "$Env:temp\wpm.appxbundle"
Add-AppxPackage "https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx"
Add-AppxPackage -Path "$Env:temp\wpm.appxbundle"

# Install store apps with winget command
winget install ubuntu
winget install "windows terminal"

# Install WSL2.0
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux