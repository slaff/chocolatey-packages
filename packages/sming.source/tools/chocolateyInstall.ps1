
$packageName = $env:ChocolateyPackageName
$packageVersion = $env:ChocolateyPackageVersion 
$url="https://github.com/SmingHub/Sming"
$toolsRoot = Get-ToolsLocation

chdir "$toolsRoot"
git clone -b master $url

Install-ChocolateyEnvironmentVariable "SMING_HOME" "$toolsRoot\sming\Sming" 'Machine'
Write-Debug "Set SMING_HOME to $toolsRoot\Sming\Sming"

Update-SessionEnvironment
