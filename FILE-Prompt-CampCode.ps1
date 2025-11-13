## Append Files with Campaign code and an underscore
#### Rename all files in the current directly by adding the prompted text (excluding the script itself)
$campCode = Read-Host "Enter the Campaign Code"
Get-ChildItem -Exclude *.ps1 | % { Rename-Item -Path $_.FullName -NewName ($campCode + "_" + $_.Name) } 
Write-Host "Renaming complete. Please verify before sending." -foregroundcolor green;
