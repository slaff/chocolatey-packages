
$toolsRoot = Get-ToolsLocation
$smingRoot = "$toolsRoot\Sming"

if (Test-Path "$smingRoot") {
  Remove-Item "$smingRoot" -Recurse -Force -Confirm
}

Uninstall-ChocolateyEnvironmentVariable "SMING_HOME" 'Machine'

Update-SessionEnvironment
