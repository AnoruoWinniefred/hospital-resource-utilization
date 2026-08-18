---- HOSPITAL RESOURCE UTILISATION DASHBOARD BETWEEN 2010-2020-----
----patient volume
-----1. HOW MANY UNIQUE PATIENTS VISITED---
select
count(DISTINCT PATIENT) as Unique_patients
from encounters
where YEAR(START) BETWEEN 2010 AND 2020;

----HOW MANY PATIENTS VISITED BETWEEN 2010-2020
select
YEAR(START) AS Year_of_Visit
,count(PATIENT) as Total_visit
from encounters
where YEAR(START) between 2010 AND 2020
group by YEAR(START);

---total admissions---
select
ENCOUNTERCLASS
,count(DESCRIPTION) total_admissions
from encounters
where YEAR(START) between 2010 AND 2020 
AND ENCOUNTERCLASS= 'inpatient' 
group by ENCOUNTERCLASS;

--- admissions by year----
select
YEAR(START) admission_year
,count(DESCRIPTION) total_admission
from encounters
where YEAR(START) BETWEEN 2010 AND 2020 
AND ENCOUNTERCLASS ='inpatient'
group by YEAR(START)
order by YEAR(START) desc;
---Total Admission by month 
select
YEAR(START) admission_year
,MONTH(START) admission_month
,count(DESCRIPTION) total_admission
from encounters
where YEAR(START) BETWEEN 2010 AND 2020 
AND ENCOUNTERCLASS ='inpatient'
group by YEAR(START), MONTH(START)
order by YEAR(START), MONTH(START) desc;

----2. HOW MANY ARE MALE AND FEMALE----
select 
P.GENDER
,count(*) Total_patients
from patients P
JOIN encounters E
ON E.PATIENT= P.Id
where YEAR(START) BETWEEN 2010 AND 2020 
AND GENDER IN ('M','F') 
group by GENDER;

---3. TOTAL ENCOUNTER IN EACH HOSPITAL/ 
select 
O.NAME
,YEAR(E.START) year_of_visit
,count(PATIENT) as Total_patients_visit
from organizations O
join encounters E 
ON E.ORGANIZATION= O.Id
where YEAR(E.START) BETWEEN 2010 AND 2020
group by O.NAME,YEAR(E.START)
order by O.NAME, YEAR(E.START);

----4. organization with the highest number of encounters---
select TOP 10
o. NAME
,count(DESCRIPTION) as Top_encounter
from organizations O
join encounters E
ON E.ORGANIZATION = O.Id
WHERE YEAR(START) BETWEEN 2010 AND 2020
group by NAME
order by count(DESCRIPTION) desc;

-----5. distribution of encounter classes---
select
ENCOUNTERCLASS
,count(*) as Total_encounter
from encounters
where YEAR(START) BETWEEN 2010 AND 2020
group by ENCOUNTERCLASS
order by count(*) desc;

----6. Average LOS for inpatient admissions
select 
ENCOUNTERCLASS 
,AVG(DATEDIFF(DAY, START, STOP)) as AVG_LOS
from encounters
where YEAR(START) BETWEEN 2010 AND 2020 
AND ENCOUNTERCLASS= 'inpatient'
group by ENCOUNTERCLASS ;

----ORG WITH THE LONGEST LOS---
select TOP 3
O.NAME
,AVG(DATEDIFF(DAY, E.START, E.STOP)) as AVG_LOS
from encounters E
JOIN organizations O
ON O.Id = E.ORGANIZATION
where YEAR(START) BETWEEN 2010 AND 2020 
AND ENCOUNTERCLASS= 'inpatient' AND E.STOP IS NOT NULL
group by NAME
order by AVG_LOS desc;

-----7. YEAR per PATIENT
select TOP 11
YEAR(START) as encounter_year,
count(Id) as total_patient
from encounters 
group by YEAR(START)
order by YEAR(START) desc
;

-----8 MOST COMMON CONDITIONS SEEN IN EACH YEAR---
select 
TOP 11
DESCRIPTION,
YEAR(START) AS Start_year
,count(DESCRIPTION) AS Total_conditions
from conditions
where YEAR(START) BETWEEN 2010 AND 2020
group by DESCRIPTION,YEAR(START) 
order by count(DESCRIPTION) desc
;
---- total medical conditions seen in the hospital---
select 
DESCRIPTION
,count(DESCRIPTION) AS Total_conditions
from conditions
where YEAR(START) BETWEEN 2010 AND 2020
group by DESCRIPTION 
order by count(DESCRIPTION) desc;

----total hospitals----
SELECT 
COUNT(Id) AS Total_hospitals
FROM organizations;