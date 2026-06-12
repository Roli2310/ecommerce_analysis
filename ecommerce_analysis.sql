# Überblick über die ersten 20 Datensätze
select * from customer
limit 20;

# Umsatz nach Mitgliedschaft
select membership_type, round(sum(total_spend),2) as total_spend
from customer
group by membership_type
order by total_spend desc;

# Top 3 Städte nach Umsatz innerhalb jedes Geschlechts
with city_rank as(
select gender,city ,round(sum(total_spend),2) as total_spend, 
row_number() over (partition by gender order by SUM(total_spend) desc) as gender_rank
from customer
group by city, gender
)
select gender, city, total_spend, gender_rank
from city_rank
where gender_rank<=3;

# Prozentualer Umsatzanteil jeder Altersgruppe
select age_group, round(Sum(total_spend),2) as total_revenue, 
Round(SUM(total_spend) / SUM(SUM(total_spend)) OVER () * 100,2) as percentage
from customer
group by age_group;

# Vergleich des durchschnittlichen Kaufbetrags zwischen zufriedenen und unzufriedenen Kunden
select satisfaction_level, round(avg(total_spend),2) as average_spend
from customer
where satisfaction_level IN ("Satisfied", "Unsatisfied")
group by satisfaction_level;

# Durchschnittliche Zufriedenheit nach Ausgabenniveau
select spending_level, round(avg(average_rating),2) as average_rating
from customer
group by spending_level;







