
$a = Get-PSDrive C
$b = "$env:USERPROFILE\Documents\Apkope.log"

if($a.Free -lt ($a.Used * 0.25)){Remove-Item -Path $env:TEMP\* -Recurse -Force -ErrorAction SilentlyContinue Clear-Recyclebin -Force "$(Get-Date) Tīrīšana veikta. Atbrīvoti:"| Out-File $b -Append}else{"$(Get-Date) Tīrīšana nav nepieciešama"  | Out-File $b -Append }

 
