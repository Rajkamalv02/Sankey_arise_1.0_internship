use HOSPITAL_SYSTEM;

INSERT INTO admitted_patient (pid, room_no, bed_no, date_of_admit, date_of_discharge)
VALUES
(11, 1, 101, '2024-02-10', '2024-02-15'),
(13, 2, 102, '2024-02-12', '2024-02-18'),
(15, 3, 103, '2024-02-14', '2024-02-20'),
(17, 4, 104, '2024-02-07', '2024-02-13'),
(19, 5, 102, '2024-02-10', '2024-02-17');

select * from admitted_patient;

