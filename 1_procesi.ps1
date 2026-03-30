$a = Get-Process | Where-Object { $_.ProcessName -notmatch "svchost" } | Sort WorkingSet -Descending | Select-Object -First 5
$b = ($a | Measure WorkingSet -Sum).Sum / 1MB

Write-Output "5 ram processes:$a MB"
