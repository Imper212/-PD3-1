$b = Get-Process | Where-Object { $_.ProcessName -notmatch "svchost" } | Sort-Object -Property CPU -Descending | Select-Object -First 5
Write-Host 
    $b | Format-Table Name, CPU -AutoSize
