
$csvPath = 'C:\IT\reboot_servers.csv'
$csvData = Get-Content -Path $csvPath

  
#Store the data from ADUsers.csv in the $ADUsers variable
$computers = $csvData


Foreach ($computer in $computers)
    {
        Restart-Computer -ComputerName $computer -Force
    }