# Felsökning: iisreset gick inte att köra i Exchange Management Shell
# Orsak: adminkontot var inte lokal administratör på EX01.
# Lösning: lägg till kontot i den lokala gruppen Administrators.

Get-LocalGroupMember Administrators
Add-LocalGroupMember -Group "Administrators" -Member "PROVATRIX\<adminkonto>"
