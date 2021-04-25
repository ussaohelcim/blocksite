# blocksite
A simple site blocker made with Powershell

### Usage
This will block "website.com"
```powershell
    .\blocksite.ps1 website.com b
```
This will unblock "website.com"
```powershell
    .\blocksite.ps1 website.com u
```

###### If you can't run this script because your system disabled scripts executions, you can bypass this running this way:

This will block "website.com"
```powershell
    PowerShell.exe -ExecutionPolicy Bypass -File .\blocksite.ps1 website.com b
```

This will unblock "website.com"
```powershell
    PowerShell.exe -ExecutionPolicy Bypass -File .\blocksite.ps1 website.com u
```

## One-line version
This will also block the website that you put betweeen the quotes of $siteToBlock. Just open Powershell as admin and paste & run this code:
```powershell
    $siteToBlock = ""; $localhost = "127.0.0.1    ";$s ="`r`n"+ $localhost + $siteToBlock; Add-Content -Path "C:\Windows\System32\drivers\etc\hosts" -Value $s;
```
