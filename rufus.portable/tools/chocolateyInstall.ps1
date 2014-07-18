$scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$destinationPath = Join-Path $scriptPath 'rufus.exe'
Get-ChocolateyWebFile 'rufus.portable' "$destinationPath" 'http://rufus.akeo.ie/downloads/rufus-1.4.9.exe'
