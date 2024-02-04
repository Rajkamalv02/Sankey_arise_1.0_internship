TYPE=VIEW
query=select `p`.`first_name` AS `Patient`,`ap`.`date_of_admit` AS `Admit_date` from (`hospital_system`.`admitted_patient` `ap` join `hospital_system`.`patient` `p` on(`ap`.`pid` = `p`.`pid`)) order by `p`.`pid`
md5=d3e3859e8d119916ade22d4d637b5e75
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2024-02-04 11:47:24
create-version=2
source=select p.first_name as Patient, ap.date_of_admit as Admit_date\nfrom admitted_patient ap\njoin patient p\non ap.pid=p.pid\norder by p.pid
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `p`.`first_name` AS `Patient`,`ap`.`date_of_admit` AS `Admit_date` from (`hospital_system`.`admitted_patient` `ap` join `hospital_system`.`patient` `p` on(`ap`.`pid` = `p`.`pid`)) order by `p`.`pid`
mariadb-version=100417
