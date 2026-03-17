New-Item -Path . -Name "Errors_2.txt" -ItemType "File" 
$a = (Get-Date).Date
$b = $a.AddDays(7 - $a.DayOfWeek)
Get-EventLog -LogName System -EntryType Error -After $b | Add-content -path "Errors_2.txt"
