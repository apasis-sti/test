#AD Get username
  $Name = Read-Host "Enter user's full name"
  $ADUser = Get-ADUser -Filter {DisplayName -eq $Name} -Properties SamAccountName

  if ($ADUser) {
      $username = $ADUser.SamAccountName
      Write-Host $username
        } else {
            Write-Host "User not found."
            }

  Pause
