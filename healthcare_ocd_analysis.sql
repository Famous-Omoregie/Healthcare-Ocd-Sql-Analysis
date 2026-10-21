CREATE DATABASE health_project;

select *
from ocd_patient;

-- 1) Count Of patients By Gender and their average obsession score
-- 2) From Q.1, calculate the patient count percentage
-- 3) Count of Monthly patient visits
-- 4) The most common Obsession Type and and it's  avg obsession score
-- 5) The most common compulsion type and its avg compulsion score


-- 1) Count Of patients By Gender and their average obsession score
Select gender, count(`Patient ID`) patient_count, round(avg(`Y-BOCS Score (Obsessions)`), 2) avg_obs_score
from ocd_patient
group by Gender;

-- 2) From Q.1, calculate the patient count percentage

With Gender_count as(
Select gender, count(`Patient ID`) patient_count
from ocd_patient
group by Gender),

 total as ( 
 select sum(patient_count) total_count
 from Gender_count)
 
 select G.gender, 
	    G.patient_count, 
        round((patient_count/ T.total_count) * 100,2) percentage
 from Gender_count G
 join total  T;
 
 -- 3) Count of Montly patient Visit

select `OCD Diagnosis Date`
from ocd_patient;

Alter table ocd_patient
modify column `OCD Diagnosis Date` date;


select date_format(`OCD Diagnosis Date`, '%y-%m') diagnosis_Month, count(`Patient ID`) patient_count
from ocd_patient
group by diagnosis_month
order by diagnosis_month desc;

 -- 4) The most common Obsession Type and and it's  avg obsession score
 
 select *
 from ocd_patient;
 
 select count(`Patient ID`) patient_num, `Obsession Type`, round(avg(`Y-BOCS Score (Obsessions)`), 2) Avg_Obsession_Score
 from ocd_patient
 group by 2
 order by 1 desc
 limit 1; 
 

 -- 5) The most common compulsion type and its avg compulsion score
 
 select count(`Patient ID`) patient_countt, `Compulsion Type`, round(avg(`Y-BOCS Score (Compulsions)`),2)  AVG_Cumpulsion_SCore
 from ocd_patient
 group by 2
 order by 1 desc
 limit 1;
 