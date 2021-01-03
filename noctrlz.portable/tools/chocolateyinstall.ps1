$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'NoCtrlZ-Binaries.zip'
Get-ChocolateyUnzip $fileLocation $toolsDir

$shortcutPath = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\NoCtrlZ.lnk"
$osBitness = Get-ProcessorBits
if ($osBitness -eq 64) {
    $target = Join-Path $toolsDir "NoCtrlZ.exe"
} else {
    $target = Join-Path $toolsDir "NoCtrlZ-32.exe"
}
Install-ChocolateyShortcut -shortcutFilePath $shortcutPath -targetPath $target
Invoke-Item $shortcutPath
