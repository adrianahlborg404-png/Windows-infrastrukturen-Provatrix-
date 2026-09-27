# Resurspostlådor (Equipment) och mötesrum (Room)
# Kan bokas i Outlook. Körs i Exchange Management Shell på EX01.

# Resurser
New-Mailbox -Name "Resurs-Lastbil-KRT904" -Equipment -DisplayName "Lastbil Vetlanda (KRT904)" -Alias "lastbil.krt904"
New-Mailbox -Name "Resurs-Lastbil-JLM309" -Equipment -DisplayName "Lastbil Vetlanda (JLM309)" -Alias "lastbil.jlm309"
New-Mailbox -Name "Resurs-Skåpbil-XPL551" -Equipment -DisplayName "Skåpbil Göteborg (XPL551)" -Alias "skapbil.xpl551"
New-Mailbox -Name "Resurs-Karaoke"        -Equipment -DisplayName "Karaokeutrustning Göteborg" -Alias "karaoke.gbg"

# Mötesrum
New-Mailbox -Name "Rum-Jamaica"      -Room -DisplayName "Jamaica (Göteborg - 6 pers)"       -Alias "jamaica"
New-Mailbox -Name "Rum-Haiti"        -Room -DisplayName "Haiti (Vetlanda - 18 pers)"        -Alias "haiti"
New-Mailbox -Name "Rum-Elba"         -Room -DisplayName "Elba (Vetlanda - 4 pers)"          -Alias "elba"
New-Mailbox -Name "Rum-Gran-Canaria" -Room -DisplayName "Gran Canaria (Göteborg - 12 pers)" -Alias "grancanaria"
New-Mailbox -Name "Rum-Mykonos"      -Room -DisplayName "Mykonos (Göteborg - 42 pers)"      -Alias "mykonos"
