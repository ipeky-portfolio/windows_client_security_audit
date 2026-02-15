# Beispiel-Finding

Kontroll-ID: 2.3.1.1  
Kontrollname: Administrator-Konto umbenennen

Erwartet:  
Das integrierte Administrator-Konto wurde umbenannt

Beobachtet:  
Standardname "Administrator" wird verwendet

Status:  
Nicht konform

Risikostufe:  
Mittel

Auswirkung:  
Erhöhtes Risiko von Brute-Force-Angriffen

Empfehlung:  
Benennen Sie das integrierte Administrator-Konto über GPO um:  
Computer Configuration -> Windows Settings -> Security Settings -> Local Policies -> Security Options
