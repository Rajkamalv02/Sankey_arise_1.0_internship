use HOSPITAL_SYSTEM;

-- Fetching the name of the Patients with their assigned Doctors

select p.pid,p.first_name as patient ,p.disease,d.first_name as doctor,d.dept_name
from patient p
join doctor d
on p.doc_id = d.doc_id
order by p.pid
limit 10;

-- fetching the details of the patients whose lab test result is positive

select distinct p.pid, p.first_name as Patient,p.disease,l.test_result
from diagnoses d
join lab_report l
on d.pid = l.pid
join patient p
on p.pid = l.pid
where l.test_result ="positive"
order by pid;

-- creating view for the Patient who are admitted to the hospital
create view admitPatient as
select p.first_name as Patient, ap.date_of_admit as Admit_date
from admitted_patient ap
join patient p
on ap.pid=p.pid
order by p.pid;
select * from admitPatient;


-- creating view to get the total charges of the Patients 
create view Total_charges as
select p.first_name as Patient,p.disease,l.lab_charge,ap.bed_charges,(l.lab_charge+ap.bed_charges) as Total_charge  
from patient p
join lab_report l
on p.pid=l.pid
join admitted_patient ap
on ap.pid=p.pid
order by p.pid;

select * from Total_charges;



