# Audit Methodik

## Phase 1 – Systemidentifikation

- Betriebssystem-Version prüfen
- Patch-Level überprüfen
- Domänenmitgliedschaft prüfen
- Baseline Sicherheitsstatus erfassen

## Phase 2 – Konfigurations-Sammlung

Datensammlung erfolgt mittels:

- PowerShell Cmdlets
- Export der Sicherheitsrichtlinien
- Audit-Policy-Auszug
- Registry-Abfragen

## Phase 3 – CIS Control Validierung

Jede CIS-Kontrolle wird abgebildet auf:

- Kontroll-ID
- Erwartete Konfiguration
- Tatsächliche Konfiguration
- Compliance-Status

## Phase 4 – Risikobewertung

Nicht-konforme Findings werden bewertet nach:

- Auswirkung
- Eintrittswahrscheinlichkeit
- Expositionslevel

Risikostufen:

- Hoch – Kritische Sicherheitslücke
- Mittel – Erhöhtes Risiko
- Niedrig – Geringfügige Abweichung

## Phase 5 – Reporting

Der abschließende Bericht enthält:

- Executive Summary
- Gesamt-Compliance-Score
- Detaillierte Findings-Tabelle
- Remediation-Plan
