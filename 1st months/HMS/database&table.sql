CREATE DATABASE HOSPITAL_SYSTEM;
USE HOSPITAL_SYSTEM;
CREATE TABLE doctor(
	doc_id int primary key auto_increment,
    first_name varchar(20) not null,
    last_name varchar(20) not null,
    gender varchar(20) not null,
    age int check(age>20),
    phone VARCHAR(15) not null,
    dept_name varchar(50) not null
);
CREATE TABLE patient(
	pid int primary key auto_increment,
    first_name varchar(20) not null,
    last_name varchar(20) not null,
    gender varchar(20) not null,
    age int check(age>0),
    phone VARCHAR(15) not null,
    city varchar(50) not null,
    casefile_no int unique,
    disease varchar(50) not null,
    doc_id int not null,
    foreign key (doc_id) references doctor(doc_id)
);

CREATE TABLE lab_report(
	report_id int primary key auto_increment,
    lab_no int not null,
    pid int not null,
    doc_id int not null,
    test_result varchar(50) not null,
    lab_charge decimal(10,2),
    report_date date not null,
    
    foreign key (pid) references patient(pid),
    foreign key (doc_id) references doctor(doc_id)
);

CREATE TABLE diagnoses(
	case_id int primary key auto_increment,
    pid int not null,
    doc_id int not null,
    report_id int not null,
    foreign key (pid) references patient(pid),
    foreign key (doc_id) references doctor(doc_id),
    foreign key(report_id) references lab_report(report_id)


);

CREATE TABLE room(
	room_no int primary key auto_increment,
    no_of_beds int not null,
    room_type varchar(50)

);

CREATE TABLE admitted_patient(
	admit_id int primary key auto_increment,
    pid int not null,
    room_no int not null,
    bed_no int not null,
    date_of_admit date not null,
    date_of_discharge date not null,
    total_days int generated always as(datediff(date_of_discharge,date_of_admit)) stored,
    bed_daily_rate decimal(10,2) default 200.00,
    bed_charges int generated always as(datediff(date_of_discharge,date_of_admit)* bed_daily_rate) stored,
    foreign key (pid) references patient(pid),
    foreign key (room_no) references room(room_no)
);

CREATE TABLE bill(
	bill_id int primary key auto_increment,
    pid int not null,
    lab_charge decimal(10,2),
    bed_charge decimal(10,2) ,
    total_charges decimal(10,2) not null,
    bill_date date not null
    
);


