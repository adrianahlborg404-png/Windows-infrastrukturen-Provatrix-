# Autodiscover så att Outlook hittar Exchange automatiskt, och test av mailflödet
# Körs i Exchange Management Shell på EX01.
# Kräver A-poster i DNS för autodiscover.provatrix.se och mail.provatrix.se.

Set-ClientAccessService -Identity EX01 `
    -AutoDiscoverServiceInternalUri "https://autodiscover.provatrix.se/Autodiscover/Autodiscover.xml"

# Snabbtest av transport och leverans
Test-Mailflow -TargetEmailAddress administrator@provatrix.se
