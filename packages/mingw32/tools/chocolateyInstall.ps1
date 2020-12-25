$packageName = 'mingw32'
$url='https://github.com/SmingHub/SmingTools/releases/download/1.0/'

$mingwInstallDir = "$($env:SystemDrive)\MinGW"
Install-ChocolateyPath "$mingwInstallDir\bin;$mingwInstallDir\msys\1.0\bin" 'Machine'
Install-ChocolateyZipPackage "$packageName.MinGW32" "$url/MinGW-2020-10-19.7z" "$mingwInstallDir\.."

Update-SessionEnvironment
