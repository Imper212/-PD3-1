$a = Get-MpComputerStatus

if($a.RealTimeProtectionEnabled -eq $false -or $a.QuickScanAge -gt 3){Write-Host "Sistēma ir apdraudēta"}else {Write-host "sistēma ir droša"
