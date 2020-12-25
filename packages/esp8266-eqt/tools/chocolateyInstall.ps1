$packageName = 'esp8266-eqt'
$url='https://github.com/SmingHub/SmingTools/releases/download/1.0/x86_64-w64-mingw32.xtensa-lx106-elf-e6a192b.201211.zip'

$toolBase = "$($env:SystemDrive)\tools"
$eqtInstallDir = "$toolbase\esp-quick-toolchain\gnu20"
Install-ChocolateyZipPackage "$packageName.esp-quick-toolchain" "$url" "$eqtInstallDir"
Install-ChocolateyEnvironmentVariable "ESP_HOME" "$eqtInstallDir"

Update-SessionEnvironment
