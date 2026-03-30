%b = "$env:USERPROFILE\Documents\Errors.txt"

$a = Get-WinEvent -LogName System | Where {$_.LevelDisplayName -eq "Error" -and TimeCreated -gt (Get-Date).AddDays(-7)}
if($a.Count -gt 10){"[KRITISKI] Sistēma ir nestabila!" | Out-File $b} else{"[OK] Kļūdu līmenis normāls."| Out-File $b}
