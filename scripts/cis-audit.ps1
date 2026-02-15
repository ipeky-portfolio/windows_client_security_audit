Write-Host "Starte CIS Windows Client Audit..."

$results = @()

# Passwort-Richtlinie prüfen
$passwordPolicy = net accounts
if ($passwordPolicy -match "Minimum password length") {
    $results += "Passwort-Richtlinie: Geprüft"
}

# Defender-Status prüfen
$defender = Get-MpComputerStatus
if ($defender.RealTimeProtectionEnabled -eq $true) {
    $results += "Windows Defender Echtzeitschutz: Konform"
} else {
    $results += "Windows Defender Echtzeitschutz: Nicht konform"
}

# Firewall prüfen
$firewall = Get-NetFirewallProfile
foreach ($profile in $firewall) {
    if ($profile.Enabled -eq $true) {
        $results += "Firewall $($profile.Name): Aktiviert"
    } else {
        $results += "Firewall $($profile.Name): Deaktiviert"
    }
}

# BitLocker prüfen
$bitlocker = manage-bde -status
$results += "BitLocker-Status geprüft"

Write-Host "Audit abgeschlossen"
$results
