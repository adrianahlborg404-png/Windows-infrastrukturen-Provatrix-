# Förbereder Active Directory för Exchange
# Körs på EX01 från Exchange-ISO:n (här monterad som D:).
# Kontot måste vara medlem i Schema Admins, Enterprise Admins och Domain Admins.
#
# Installera först: .NET Framework 4.8, Visual C++ 2013, UCMA Runtime,
# IIS URL Rewrite Module och de Windows-funktioner Exchange 2019 kräver.

D:\Setup.exe /PrepareSchema
D:\Setup.exe /PrepareAD /OrganizationName:"Provatrix"
D:\Setup.exe /PrepareAllDomains
