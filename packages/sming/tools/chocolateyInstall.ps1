
$python = "C:\Python39\python"

Install-ChocolateyEnvironmentVariable "PYTHON" "$python" 'Machine'
Write-Debug "Set PYTHON to $python"

Update-SessionEnvironment
