$packageName = 'mingw32'

Uninstall-ChocolateyZipPackage "$packageName.MinGW32" "MinGW-2020-10-19.7z"

Update-SessionEnvironment
