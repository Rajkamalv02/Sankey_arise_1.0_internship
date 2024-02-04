use HOSPITAL_SYSTEM;

-- Creating a trigger to check weather the medical insurance is expired or not
DELIMITER //
CREATE TRIGGER CheckInsuranceExpiry
BEFORE INSERT ON bill
FOR EACH ROW
BEGIN
    DECLARE insurance_limit DECIMAL(10,2);

    SELECT medical_insurance INTO insurance_limit
    FROM patient
    WHERE pid = NEW.pid;

    IF NEW.total_charges > insurance_limit THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Medical insurance limit has expired for the patient';
    END IF;
END //
DELIMITER ;
