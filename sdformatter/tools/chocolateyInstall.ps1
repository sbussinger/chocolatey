$packageName = "sdformatter"
$url = "https://www.sdcard.org/downloads/formatter_4/eula_windows/SDCardFormatterv5_WinEN.zip"

try {
  $scriptFolder = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  $zipPath = Join-Path $scriptFolder "SDCardFormatterv5_WinEN.zip"
  $installerPath = Join-Path $scriptFolder "setup.exe"

  Get-ChocolateyWebFile "$packageName" "$zipPath" "$url"
  Get-ChocolateyUnzip "$zipPath" "$scriptFolder"
  Install-ChocolateyInstallPackage "$packageName" "EXE" "/S /v/qn" "$installerPath"

  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}
