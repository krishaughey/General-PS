$campCode = Read-Input "Enter the Campaign Code with no punctuation"
$items = Get-ChildItem
$items | Rename-Item -NewName { "$campCode" + $_.Name }
Write-Host "Renaming complete. Please check the files were processed successfully before sending." -foregroundcolor green;
