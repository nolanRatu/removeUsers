########################################################################################
# Powershell Script: Delete User Accounts From CSV 
# Editor: Nolan Ratu
# IN719
########################################################################################

#Get AD Cmdlets
Import-Module ActiveDirectory

#Get CSV file path
$Users = Import-Csv -Delimiter "," -Path ".\usersToDelete.csv" 

#Loop through file and get data
foreach ($User in $Users) 
{

    $SAM = $User.LoginAccount
    
    #Delete the user
    Remove-ADUser -Identity $SAM 
}