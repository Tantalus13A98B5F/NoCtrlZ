$ErrorActionPreference = 'Stop';

$shortcutPath = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\NoCtrlZ.lnk"
Remove-Item $shortcutPath -ea ignore
