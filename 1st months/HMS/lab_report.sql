use HOSPITAL_SYSTEM;
INSERT INTO lab_report (lab_no, pid, doc_id, test_result, lab_charge, report_date)
VALUES
(1, 11, 7, 'positive', 1500.75, '2024-02-10'),
(2, 12, 8, 'negative', 450.50, '2024-02-11'),
(3, 13, 3, 'positive', 1200.25, '2024-02-12'),
(4, 14, 4, 'negative', 800.00, '2024-02-13'),
(5, 15, 5, 'positive', 1600.50, '2024-02-14'),
(6, 16, 6, 'negative', 300.75, '2024-02-15'),
(7, 17, 7, 'positive', 1100.25, '2024-02-16'),
(8, 18, 8, 'negative', 750.50, '2024-02-17'),
(9, 19, 9, 'positive', 1800.75, '2024-02-18'),
(10, 20, 10, 'negative', 1200.25, '2024-02-19');

select * from lab_report;
