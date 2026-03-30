$a = Get-Date -Format "yyyyMMdd"


%b = "$env:USERPROFILE\Documents\Atskaite_%a.zip"
Compress-Archive "$env:USERPROFILE\Documents\Errors.txt" $b -Force
%c = (Get-Item %b).Lenght/ 1KB
Write-Output "%c KB"




