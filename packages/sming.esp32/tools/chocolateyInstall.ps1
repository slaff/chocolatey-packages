#
# Chocolatey install script for ESP-IDF and ESP32 tools for use with Sming
#

$toolBase = Get-ToolsLocation
$idfPath = "$toolbase\esp-idf-4.3"
$idfToolsPath = "$toolbase\esp32"

if ($env:IDF_PATH -or $env:IDF_TOOLS_PATH) {
    throw "IDF_PATH/IDF_TOOLS_PATH already set"
}

if ( -not ($env:PYTHON) ) {
    throw "PYTHON not defined. Please install 'Sming' package first"
}

$pythonPath = Split-Path "$env:PYTHON"

git clone -b sming/release/v4.3 https://github.com/mikee47/esp-idf.git "$idfPath"

Install-ChocolateyEnvironmentVariable "IDF_PATH" "$idfPath" 'Machine'
Install-ChocolateyEnvironmentVariable "IDF_TOOLS_PATH" "$idfToolsPath" 'Machine'
Install-ChocolateyEnvironmentVariable "ESP32_PYTHON_PATH" "$pythonPath" 'Machine'

Update-SessionEnvironment


# Run the IDF tools installation

$env:IDF_PATH = "$idfPath"
$env:IDF_TOOLS_PATH = "$idfToolsPath"
$env:ESP32_PYTHON_PATH = "$pythonPath"

&"$env:PYTHON" "$idfPath\tools\idf_tools.py" install
&"$env:PYTHON" -m pip install -r "$idfPath\requirements.txt"
