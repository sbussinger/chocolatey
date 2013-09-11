$scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$destinationPath = Join-Path $scriptPath 'rufus.exe'
Get-ChocolateyWebFile 'rufus.portable' "$destinationPath" 'http://rufus.akeo.ie/downloads/rufus_v1.3.4.exe'
