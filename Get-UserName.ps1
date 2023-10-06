#AD Get username
        $firstname = Read-Host "Enter users first name"
        $lastname  = Read-Host "Enter Users' last name"
        $Name      = $firstname + " " + $lastname
        $username = Get-ADUser -Filter "Displayname -eq '$Name'"| Select-Object -ExpandProperty 'SamAccountName'
        write-host $username
        pause
