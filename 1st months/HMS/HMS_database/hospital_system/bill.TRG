TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER CheckInsuranceExpiry\nBEFORE INSERT ON bill\nFOR EACH ROW\nBEGIN\n    DECLARE insurance_limit DECIMAL(10,2);\n\n    -- Get the medical insurance limit for the patient\n    SELECT medical_insurance INTO insurance_limit\n    FROM patient\n    WHERE pid = NEW.pid;\n\n    IF NEW.total_charges > insurance_limit THEN\n        SIGNAL SQLSTATE \'45000\'\n        SET MESSAGE_TEXT = \'Medical insurance limit has expired for the patient\';\n    END IF;\nEND'
sql_modes=1098907648
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_general_ci'
db_cl_names='utf8mb4_general_ci'
created=170705101800
