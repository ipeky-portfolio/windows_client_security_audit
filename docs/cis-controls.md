# CIS Controls Template – Windows 10 & 11

Diese Tabelle enthält die wichtigsten audit‑relevanten CIS Kontrollen (typisch aus Windows 10/11 Benchmarks)
inkl. Expected Values und passenden Audit‑Checks.

| ID    | Kategorie              | Beschreibung                                   | Erwartet (Expected)              | Audit‑Check (PowerShell / CLI) |
|-------|------------------------|-----------------------------------------------|----------------------------------|--------------------------------|
| AC‑01 | Password Policy        | Mindestpasswortlänge                          | ≥ 14 Zeichen                     | `net accounts` / PS Check      |
| AC‑02 | Password Policy        | Passwortkomplexität aktiv                      | Aktiviert                        | `net accounts` / PS Check      |
| AC‑03 | Account Lockout        | Sperrung nach Fehlversuchen                   | ≤ 10 Fehlversuche               | `net accounts`                 |
| AC‑04 | Guest & Admin Accounts | Gast deaktiviert                               | Deaktiviert                      | `Get‑LocalUser Guest`          |
| AC‑05 | Local Admin            | Lokale Admins geprüft                          | Nur autorisierte Accounts       | `Get‑LocalGroupMember Administrators` |
| AU‑01 | Audit Policy           | Logon/Logoff Audit                             | Aktiviert                        | `auditpol /get /category:*`    |
| AU‑02 | Audit Policy           | Policy Change Audit                            | Aktiviert                        | `auditpol /get /subcategory:*` |
| SE‑01 | Security Options       | SMBv1 deaktiviert                              | Disabled                         | Registry / PowerShell          |
| SE‑02 | Security Options       | LLMNR deaktiviert                               | Disabled                         | Registry / PowerShell          |
| SE‑03 | UAC                    | UAC auf hohem Sicherheitsniveau                | Enabled High                     | Registry / GPO                 |
| WD‑01 | Windows Defender       | Echtzeitschutz                                 | Enabled                          | `Get‑MpComputerStatus`         |
| WD‑02 | Windows Defender       | Cloud‑Protection                                | Enabled                          | `Get‑MpPreference`             |
| FW‑01 | Firewall               | Domain Firewall aktiviert                       | Enabled                          | `Get‑NetFirewallProfile`       |
| FW‑02 | Firewall               | Private Firewall aktiviert                      | Enabled                          | `Get‑NetFirewallProfile`       |
| FW‑03 | Firewall               | Public Firewall aktiviert                       | Enabled                          | `Get‑NetFirewallProfile`       |
| BL‑01 | BitLocker              | Systemlaufwerk verschlüsselt                    | Ja                               | `manage-bde -status`           |
| BL‑02 | BitLocker              | TPM erforderlich                                | Ja                               | `manage-bde -status`           |
| RS‑01 | Restricted Services    | SMB v2+ Only                                   | SMBv1 Disabled                   | PS / Registry                  |
| SR‑01 | SmartScreen            | SmartScreen für Apps                            | Enabled                          | Registry / GPO                 |
| LO‑01 | LSA Protection         | LSA Protection aktiviert                        | Enabled                          | Registry / GPO                 |

> Hinweis: Kürzel wie AC = Account, AU = Audit, SE = Security Options etc. sind inhaltlich orientiert an CIS‑Benchmarks.

---

## Audit‑Check Beispiele

### Passwortrichtlinie prüfen

```powershell
$pwPolicy = net accounts
$pwPolicy | Select‑String "Minimum password length"
