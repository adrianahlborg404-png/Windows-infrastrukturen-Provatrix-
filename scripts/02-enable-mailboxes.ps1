# Skapar postlådor för alla AD-användare i en OU
# Hoppar över användare som redan har en postlåda.
# Körs i Exchange Management Shell på EX01.

Add-PSSnapin Microsoft.Exchange.Management.PowerShell.SnapIn

$Database = Get-MailboxDatabase
$UsersOU  = "OU=Users,OU=Provatrix,DC=provatrix,DC=se"   # byt till er OU

$Users = Get-ADUser -Filter * -SearchBase $UsersOU -Properties SamAccountName

foreach ($User in $Users) {
    $Sam = $User.SamAccountName
    $Mailbox = Get-Mailbox -Identity $Sam -ErrorAction SilentlyContinue

    if ($Mailbox) {
        Write-Host "Mailbox finns redan för $Sam" -ForegroundColor Blue
    }
    else {
        Enable-Mailbox -Identity $Sam -Database $Database
        Write-Host "Mailbox skapad för $Sam" -ForegroundColor DarkGreen
    }
}
