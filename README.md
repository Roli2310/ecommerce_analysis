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
* [cite_start]**EDA & Datenbereinigung:** Einlesen der Rohdaten (`E-commerce Customer Behavior - Sheet1.csv`), Bereinigen von Null-Values im Feld `satisfaction_level` und Vereinheitlichung der Spaltennamen (*snake_case*)[cite: 5, 10, 11].
* [cite_start]**Klassifizierungen:** Erstellung neuer Features wie Altersgruppen (`age_group`) und die automatische Einteilung der Kunden in drei Kaufkraft-Klassen (`spending_level`) mittels Quantil-Splitting[cite: 10].

### 2. Relationale Speicherung (SQL)
* [cite_start]**Automatisierter Export:** Export des bereinigten Datenbestands aus Python direkt in eine relationale MySQL-Struktur (`customer`-Tabelle)[cite: 10].
* [cite_start]**Datenvalidierung:** Durchführung analytischer SQL-Abfragen zur Validierung der Datenqualität (z. B. Umsatzanteile nach Segmenten, Analyse von Kundenzufriedenheit vs. Warenkorbwert)[cite: 10].

### 3. Dashboard-Design & Modellierung (Power BI)
* [cite_start]**Datenmodellierung & Segmentierung:** Import der vorstrukturierten SQL-Tabellen und direkte Nutzung der in Python generierten Feature-Spalten (`spending_level` und `age_group`) für eine saubere, performante Segmentierung der Kundenbasis ohne zusätzliche Systembelastung[cite: 10].
* **UI/UX:** Entwicklung einer modernen, kachelbasierten Benutzeroberfläche mit interaktiven Slicern (Buttons), die dem Management schnelle Filterungen nach Geschlecht oder Kaufkraft erlauben.

---

## 📈 Kern-Erkenntnisse (Business Insights)
* [cite_start]**Umsatzstruktur:** Der durchschnittliche Warenkorbwert liegt bei **845,38 €** bei durchschnittlich **12,6 gekauften Artikeln** pro Kunde[cite: 10].
* [cite_start]**Kundenbindung:** Im Median kaufen Kunden alle **23 Tage** ein[cite: 10]. [cite_start]Inaktive Kunden (bis zu 63 Tage ohne Kauf) bieten direkte Hebel für gezielte Marketing-Retargeting-Kampagnen[cite: 10].
* [cite_start]**Zufriedenheit:** Die durchschnittliche Bewertung liegt bei starken **4,02 von 5 Sternen**[cite: 10]. [cite_start]Unzufriedene Kunden clustern sich primär im Bronze-Mitgliedschafts-Segment – ein klarer Ansatzpunkt für den Kundenservice[cite: 10].

---

## 📁 Projektdateien
* [cite_start]`E-commerce Customer Behavior - Sheet1.csv`: Der zugrundeliegende Rohdatensatz[cite: 5].
* [cite_start]`ecommerce_analysis.ipynb`: Jupyter Notebook für die Datenbereinigung, Transformation und den SQL-Export[cite: 10].
* [cite_start]`ecommerce_analysis.sql`: SQL-Skript mit den analytischen Abfragen zur Datenvalidierung[cite: 10].
* [cite_start]`ecommerce_dashboard.pbix`: Die Power BI Datei inklusive Datenmodell und visuellem Dashboard[cite: 11].
