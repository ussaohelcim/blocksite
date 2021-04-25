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