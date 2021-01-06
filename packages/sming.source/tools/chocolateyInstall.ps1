
$url="https://github.com/SmingHub/Sming"
$toolsRoot = Get-ToolsLocation
$smingRoot = "$toolsRoot\Sming"

if (Test-Path "$smingRoot") {
  throw "'$smingRoot' already exists. Please remove and try again."
}

git clone -b master $url "$smingRoot"

Install-ChocolateyEnvironmentVariable "SMING_HOME" "$smingRoot\Sming" 'Machine'
Write-Debug "Set SMING_HOME to $smingRoot\Sming"

Update-SessionEnvironment
