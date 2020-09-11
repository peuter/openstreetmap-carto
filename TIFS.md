# Datenbank-Spalten Wanderwege (rte01)
* SCL: Schlüssel ist ein Zahlenschlüssel, durch den Wege eindeutig identifizierbar sind. Dieses Attribut ist notwendig, da es mehrere Wege gleichen Namens gibt (z.B. "Jakobsweg"). Das Feld besteht aus 22 Stellen, wobei die ersten beiden Stellen den Ländercode angeben.
* NAM: Name ist der Eigenname des Weges (z.B. "Jakobsweg").
* WGV: Wegverlauf
* INF: Weitere beliebige Informationen zum Objekt
* OLG: "Offizielle Länge" ist die Gesamtlänge eines Freizeitwegs, die z.B. beim Träger des Wegs geführt wird.
* KAT: Kategorie des Wanderwegs 
    Wertearten:
        Hauptwanderweg          - 1010
        #Fernwanderweg           - 1020
        Regionaler Wanderweg    - 1030
        Örtlicher Wanderweg     - 1040
        #Verbindungswanderweg    - 1050
        Rundwanderweg           - 1060
        Themenwanderweg         - 1070
        #Unmarkierter Wandervorschlag - 1080
        #Sonstiger Wanderweg     - 1099
* PKT: Auszeichnung eines Verbands o.ä.
        Dt. Wandersiegel Premiumweg - 1010
        Dt. Wandersiegel Extratour  -1ß11
        Qualitätsweg Wanderbares Deutschland - 1020
    