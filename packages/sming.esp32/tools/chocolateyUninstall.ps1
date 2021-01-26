#
# Chocolatey uninstall script for ESP-IDF and ESP32 tools for use with Sming
#

if ($env:IDF_PATH -and (Test-Path $env:IDF_PATH)) {
    Remove-Item -path $env:IDF_PATH -Recurse
}

if ($env:IDF_TOOLS_PATH -and (Test-Path $env:IDF_TOOLS_PATH)) {
    Remove-Item -path $env:IDF_TOOLS_PATH -Recurse
}

Uninstall-ChocolateyEnvironmentVariable "ESP_IDF" 'Machine'
Uninstall-ChocolateyEnvironmentVariable "ESP_TOOLS_IDF" 'Machine'
Uninstall-ChocolateyEnvironmentVariable "ESP32_PYTHON_PATH" 'Machine'

Update-SessionEnvironment
