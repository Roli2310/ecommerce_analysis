# End-to-End E-Commerce Analytics Project

> **Short Description:** A comprehensive data analytics project implementing a full ETL pipeline: from raw data cleaning and statistical customer profiling in Python, to relational validation via SQL, culminating in an interactive UI/UX dashboard in Power BI for data-driven management decisions.

---

## 📋 Project Overview
This project establishes a complete **End-to-End Data Pipeline** (ETL). It transforms raw e-commerce data using **Python (Pandas)**, stores it structured within a **SQL Database (MySQL)**, and visualizes business-critical KPIs inside an interactive **Power BI** dashboard. 

The primary objective is to decode the purchasing behavior of 350+ customers, identify key revenue drivers, and uncover actionable customer segments.

---

## 🛠️ Tech Stack
* **Data Engineering & ETL:** Python 3 (`pandas`, `numpy`, `SQLAlchemy`)
* **Data Storage:** SQL (MySQL Database)
* **Business Intelligence:** Power BI Desktop (UI/UX Design, Dashboarding)

---

## ⚙️ Pipeline & Implementation

### 1. Data Cleaning & Feature Engineering (Python)
* **EDA & Data Sanitization:** Ingested raw source data (`E-commerce Customer Behavior - Sheet1.csv`), handled missing values in the `satisfaction_level` column, and standardized column headers to uniform *snake_case*.
* **Feature Engineering:** Developed new demographic features such as defined age categories (`age_group`) and categorized customers automatically into three purchasing power tiers (`spending_level`) utilizing quantile splitting (*qcut*).

### 2. Relational Storage (SQL)
* **Automated Export:** Streamlined the cleaned data frame export directly from Python into a relational MySQL structure (`customer` table).
* **Data Validation:** Executed analytical SQL queries to validate data integrity (e.g., assessing revenue share across segments and testing correlation metrics like customer satisfaction vs. average spending).

### 3. Dashboard Design & Modeling (Power BI)
* **Data Modeling & Segmentation:** Imported pre-structured SQL tables, natively leveraging the pre-engineered Python feature columns (`spending_level` and `age_group`) to create highly performant data slices without taxing system memory.
* **UI/UX Design:** Built a sleek, tile-based user interface accented with modern button-style slicers, enabling stakeholders to instantly filter global metrics by gender or purchasing power.

---

## 📈 Key Business Insights
* **Revenue Structure:** The average customer transaction yield stands at **€845.38** with a mean volume of **12.6 items purchased** per profile.
* **Customer Retention:** Customers buy every **23 days** on median. Dormant segments (up to 63 days without a transaction) reveal strong revenue recovery levers for automated marketing retargeting campaigns.
* **Customer Satisfaction:** Overall experience ranks high at an average of **4.02 out of 5 stars**. Unsatisfied customer patterns heavily cluster within the Bronze membership tier—defining a clear target group for customer service intervention.

## 📈 Kern-Erkenntnisse (Business Insights)
* **Umsatzstruktur:** Der durchschnittliche Warenkorbwert liegt bei **845,38 €** bei durchschnittlich **12,6 gekauften Artikeln** pro Kunde.
* **Kundenbindung:** Im Median kaufen Kunden alle **23 Tage** ein. Inaktive Kunden (bis zu 63 Tage ohne Kauf) bieten direkte Hebel für gezielte Marketing-Retargeting-Kampagnen.
* **Zufriedenheit:** Die durchschnittliche Bewertung liegt bei starken **4,02 von 5 Sternen**. Unzufriedene Kunden clustern sich primär im Bronze-Mitgliedschafts-Segment – ein klarer Ansatzpunkt für den Kundenservice.





