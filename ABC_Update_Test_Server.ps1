# Import the ActiveDirectory module
Import-Module ActiveDirectory

# Define the OU path (replace with your actual OU distinguished name)
$ouTestServers = "OU=TestServers,OU=Computers,OU=MyBusiness,DC=sdantibody,DC=local"

# Fetch all computer objects from the specified OU
$computers = Get-ADComputer -Filter * -SearchBase $ouTestServers | Select-Object -ExpandProperty Name

# Command to run on each server
$scriptBlock = {ABC-Update.exe /S:WSUS /A:Install /R:N}

# Loop through each computer and execute the command
foreach ($computer in $computers) {
    Write-Output "Processing $computer
    Invoke-Expression -Command ("winrs -r:" + $computer + " " + $scriptBlock)

}
