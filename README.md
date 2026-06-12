# End-to-End E-Commerce Analytics Project

## 📋 Projektübersicht
Dieses Projekt bildet eine vollständige **End-to-End Data Pipeline** (ETL) ab. Es transformiert E-Commerce-Rohdaten via **Python (Pandas)**, speichert sie strukturiert in einer **SQL-Datenbank (MySQL)** und visualisiert geschäftskritische Kennzahlen in einem interaktiven **Power BI** Dashboard. 

Ziel ist es, das Kaufverhalten von 350 Kunden zu entschlüsseln, Umsatztreiber zu identifizieren und Kundensegmente sichtbar zu machen.

---

## 🛠️ Tech Stack
* **Data Engineering & ETL:** Python 3 (`pandas`, `numpy`, `SQLAlchemy`)
* **Datenhaltung:** SQL (MySQL-Datenbank)
* **Business Intelligence:** Power BI Desktop (UI/UX-Design, Dashboarding)

---

## ⚙️ Pipeline & Umsetzung

### 1. Datenbereinigung & Feature Engineering (Python)
* **EDA & Datenbereinigung:** Einlesen der Rohdaten (`E-commerce Customer Behavior - Sheet1.csv`), Bereinigen von Null-Values im Feld `satisfaction_level` und Vereinheitlichung der Spaltennamen (*snake_case*).
* **Klassifizierungen:** Erstellung neuer Features wie Altersgruppen (`age_group`) und die automatische Einteilung der Kunden in drei Kaufkraft-Klassen (`spending_level`) mittels Quantil-Splitting.

### 2. Relationale Speicherung (SQL)
* **Automatisierter Export:** Export des bereinigten Datenbestands aus Python direkt in eine relationale MySQL-Struktur (`customer`-Tabelle).
* **Datenvalidierung:** Durchführung analytischer SQL-Abfragen zur Validierung der Datenqualität (z. B. Umsatzanteile nach Segmenten, Analyse von Kundenzufriedenheit vs. Warenkorbwert).

### 3. Dashboard-Design & Modellierung (Power BI)
* **Datenmodellierung & Segmentierung:** Import der vorstrukturierten SQL-Tabellen und direkte Nutzung der in Python generierten Feature-Spalten (`spending_level` und `age_group`) für eine saubere, performante Segmentierung der Kundenbasis ohne zusätzliche Systembelastung.
* **UI/UX:** Entwicklung einer modernen, kachelbasierten Benutzeroberfläche mit interaktiven Slicern (Buttons), die dem Management schnelle Filterungen nach Geschlecht oder Kaufkraft erlauben.

---

## 📈 Kern-Erkenntnisse (Business Insights)
* **Umsatzstruktur:** Der durchschnittliche Warenkorbwert liegt bei **845,38 €** bei durchschnittlich **12,6 gekauften Artikeln** pro Kunde.
* **Kundenbindung:** Im Median kaufen Kunden alle **23 Tage** ein. Inaktive Kunden (bis zu 63 Tage ohne Kauf) bieten direkte Hebel für gezielte Marketing-Retargeting-Kampagnen.
* **Zufriedenheit:** Die durchschnittliche Bewertung liegt bei starken **4,02 von 5 Sternen**. Unzufriedene Kunden clustern sich primär im Bronze-Mitgliedschafts-Segment – ein klarer Ansatzpunkt für den Kundenservice.

---

## 📁 Projektdateien
* `E-commerce Customer Behavior - Sheet1.csv`: Der zugrundeliegende Rohdatensatz.
* `ecommerce_analysis.ipynb`: Jupyter Notebook für die Datenbereinigung, Transformation und den SQL-Export.
* `ecommerce_analysis.sql`: SQL-Skript mit den analytischen Abfragen zur Datenvalidierung.
* `ecommerce_dashboard.pbix`: Die Power BI Datei inklusive Datenmodell und visuellem Dashboard.



