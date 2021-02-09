
$python = "C:\Python39\python"

Install-ChocolateyEnvironmentVariable "PYTHON" "$python" 'Machine'
Write-Debug "Set PYTHON to $python"

$cmake = "$env:ProgramFiles\CMake\bin"
Install-ChocolateyPath "$cmake" 'Machine'
Write-Debug "Add $cmake to system PATH"

Update-SessionEnvironment
