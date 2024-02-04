use HOSPITAL_SYSTEM;
insert into patient (first_name, last_name, gender, age, phone, city, casefile_no, disease, doc_id) VALUES
('Ravi', 'Kumar', 'Male', 35, '9876543210', 'Delhi', 101, 'Fever', 1),
('Amita', 'Sharma', 'Female', 28, '8765432109', 'Mumbai', 102, 'Cough', 2),
('Suresh', 'Gupta', 'Male', 40, '7654321098', 'Kolkata', 103, 'Headache', 3),
('Meena', 'Verma', 'Female', 32, '6543210987', 'Chennai', 104, 'Diabetes', 4),
('Nikhil', 'Yadav', 'Male', 45, '5432109876', 'Bangalore', 105, 'Hypertension', 5),
('Anjali', 'Singh', 'Female', 38, '4321098765', 'Hyderabad', 106, 'Asthma', 6),
('Rahul', 'Mishra', 'Male', 30, '3210987654', 'Ahmedabad', 107, 'Allergies', 7),
('Suman', 'Patel', 'Female', 42, '2109876543', 'Pune', 108, 'Arthritis', 8),
('Rajat', 'Shah', 'Male', 37, '1098765432', 'Jaipur', 109, 'Migraine', 9),
('Deepa', 'Jain', 'Female', 29, '9876543211', 'Lucknow', 110, 'Acne', 10),
('Arun', 'Chopra', 'Male', 33, '8765432101', 'Bhopal', 111, 'Gastritis', 7),
('Pooja', 'Garg', 'Female', 25, '7654321091', 'Indore', 112, 'Back Pain', 8),
('Vijay', 'Malhotra', 'Male', 48, '6543210981', 'Chandigarh', 113, 'Insomnia', 3),
('Anita', 'Khanna', 'Female', 31, '5432109871', 'Nagpur', 114, 'Dengue', 4),
('Sanjay', 'Rao', 'Male', 39, '4321098761', 'Kochi', 115, 'Thyroid', 5),
('Sangeeta', 'Iyer', 'Female', 27, '3210987651', 'Coimbatore', 116, 'Eczema', 6),
('Alok', 'Nair', 'Male', 43, '2109876540', 'Visakhapatnam', 117, 'Sinusitis', 7),
('Reena', 'Menon', 'Female', 36, '1098765430', 'Surat', 118, 'Ulcer', 8),
('Vikas', 'Pillai', 'Male', 26, '9876543212', 'Noida', 119, 'Bronchitis', 9),
('Shweta', 'Iyer', 'Female', 44, '8765432102', 'Thane', 120, 'Gallstones', 10);

select * from patient;
select * from patient 
where pid = 2;
update patient
set medical_insurance =1200
where pid>0;


