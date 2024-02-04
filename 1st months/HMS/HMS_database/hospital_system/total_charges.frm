TYPE=VIEW
query=select `p`.`first_name` AS `Patient`,`p`.`disease` AS `disease`,`l`.`lab_charge` AS `lab_charge`,`ap`.`bed_charges` AS `bed_charges`,`l`.`lab_charge` + `ap`.`bed_charges` AS `Total_charge` from ((`hospital_system`.`patient` `p` join `hospital_system`.`lab_report` `l` on(`p`.`pid` = `l`.`pid`)) join `hospital_system`.`admitted_patient` `ap` on(`ap`.`pid` = `p`.`pid`)) order by `p`.`pid`
md5=99d11c90bcfa697e1e86d106aeef018d
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2024-02-04 12:02:24
create-version=2
source=select p.first_name as Patient,p.disease,l.lab_charge,ap.bed_charges,(l.lab_charge+ap.bed_charges) as Total_charge  \nfrom patient p\njoin lab_report l\non p.pid=l.pid\njoin admitted_patient ap\non ap.pid=p.pid\norder by p.pid
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `p`.`first_name` AS `Patient`,`p`.`disease` AS `disease`,`l`.`lab_charge` AS `lab_charge`,`ap`.`bed_charges` AS `bed_charges`,`l`.`lab_charge` + `ap`.`bed_charges` AS `Total_charge` from ((`hospital_system`.`patient` `p` join `hospital_system`.`lab_report` `l` on(`p`.`pid` = `l`.`pid`)) join `hospital_system`.`admitted_patient` `ap` on(`ap`.`pid` = `p`.`pid`)) order by `p`.`pid`
mariadb-version=100417
