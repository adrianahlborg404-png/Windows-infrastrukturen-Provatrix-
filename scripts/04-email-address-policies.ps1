# E-postadresspolicyer
# Policyn för Göteborg skapas i EAC och filtrerar på State/Region = Gothenburg i AD.
# %g = förnamn, %s = efternamn

# Standardpolicy för alla övriga användare
New-EmailAddressPolicy -Name "EAP - Default" `
    -IncludedRecipients MailboxUsers `
    -EnabledEmailAddressTemplates "SMTP:%g.%s@provatrix.se", "smtp:%g.%s@super.net"

# Göteborg-policyn ska gå före standardpolicyn
Set-EmailAddressPolicy "EAP - Göteborg" -Priority 1
Set-EmailAddressPolicy "EAP - Default"  -Priority 2

# Applicera policyerna på befintliga postlådor
Get-Mailbox -ResultSize Unlimited | Set-Mailbox -EmailAddressPolicyEnabled $true
Get-EmailAddressPolicy | Update-EmailAddressPolicy
