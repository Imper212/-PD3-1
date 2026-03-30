$a = winget upgrade
$b = ($a | Measure).count

Write-Output “Sistēmā ir $b programmas,kuras nepieciešams atjaunināt.”
