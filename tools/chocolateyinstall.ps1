$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://winless.org/downloads/WinLess-1.9.1.msi'
$url64      = $url

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'msi'
  url           = $url
  url64bit      = $url64

  softwareName  = 'winless*'

  checksum      = '088f0a2df3b815c721f5d632db0509ffd8da38f9ad9893053d9a015590d2a766'
  checksumType  = 'sha256'
  checksum64    = '088f0a2df3b815c721f5d632db0509ffd8da38f9ad9893053d9a015590d2a766'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs