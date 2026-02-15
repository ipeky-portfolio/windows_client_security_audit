# Audit Findings

## Zusammenfassung

| Kontroll‑ID | Kategorie | Beschreibung | Erwartet | Beobachtet | Status | Risiko |
|-------------|-----------|--------------|----------|-------------|--------|--------|
| AC‑01 | Password Policy | Mindestpasswortlänge | ≥ 14 | 12 | ✘ | Mittel |
| AC‑04 | Guest deaktiviert | Gastaccount | Disabled | Enabled | ✘ | Hoch |
| WD‑01 | Defender Echtzeitschutz | Enabled | Enabled | ✔ | Niedrig |

---

## Detaillierte Findings

### AC‑01 – Mindestpasswortlänge

**Erwartet:** ≥ 14 Zeichen  
**Beobachtet:** 12 Zeichen  
**Status:** Nicht konform  
**Risiko:** Mittel  
**Empfehlung:** GPO: Computer → Policies → Windows Settings → Security Settings → Account Policies → Password Policy

---

### AC‑04 – Gastaccount deaktiviert

**Erwartet:** Disabled  
**Beobachtet:** Enabled  
**Status:** Nicht konform  
**Risiko:** Hoch  
**Empfehlung:** Lokales Gastkonto deaktivieren:  
```powershell
Disable‑LocalUser Guest
