$packageName = 'esp8266-eqt'

Uninstall-ChocolateyZipPackage "$packageName" "x86_64-w64-mingw32.xtensa-lx106-elf-e6a192b.201211.zip"
Uninstall-ChocolateyEnvironmentVariable "ESP_HOME" 'Machine'

Update-SessionEnvironment
