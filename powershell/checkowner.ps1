Get-ChildItem -Force | ForEach-Object {
    $acl = Get-Acl $_.FullName
    [PSCustomObject]@{
        Name   = $_.Name
        Type   = if ($_.PSIsContainer) { "Folder" } else { "File" }
        Owner  = $acl.Owner
    }
} | Format-Table -AutoSize
