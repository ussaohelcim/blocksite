#Requires -RunAsAdministrator
param($site, $option)

$localhost = "127.0.0.1    ";
$hostspathw = "C:\Windows\System32\drivers\etc\hosts";
$hostspathl = "/etc/hosts";

$s = $localhost + $site; 
Write-Host $s
function help{
    Write-Host "how to use: website.com option";
    Write-Host "options: b || block website";
    Write-Host "options: u || unblock website";
}

if(($null -eq $site) -or ($null -eq $option)) {help}
else 
{
    if($option -eq "b")
    {
        if(Test-Path $hostspathw)
        {
            Write-Host "tostando"
            $a = "`r`n"+$s
            Add-Content -Path $hostspathw -Value $a
        }
        elseif (Test-Path $hostspathl) 
        {
            Add-Content -Path $hostspathl -Value $a
        }
    }
    elseif($option -eq "u")
    {
        if(Test-Path $hostspathw)
        {
            $teste = [System.IO.File]::ReadAllLines($hostspathw);
            $novo = "";
            foreach ($item in $teste) {
                if($item -eq $s){  }
                else { $novo +=$item+"`r`n" }
            }
            Set-Content $hostspathw $novo
            }
        elseif (Test-Path $hostspathl) 
        {
            $teste = [System.IO.File]::ReadAllLines($hostspathw);
            $novo = "";
            foreach ($item in $teste) 
            {
                if($item -eq $s){  }
                else { $novo +=$item+"`r`n" }
            }
            Set-Content $hostspathl $novo
        }
    }
}

