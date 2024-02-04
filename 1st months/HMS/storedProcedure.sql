use HOSPITAL_SYSTEM;

-- Creating a stored procedure for bill generation
DELIMITER //
CREATE PROCEDURE GenerateBill(IN pid INT)
BEGIN
    DECLARE lab_charge DECIMAL(10,2);
    DECLARE bed_charge DECIMAL(10,2);
    DECLARE total_charges DECIMAL(10,2);

    -- Get lab charge
    SELECT COALESCE(SUM(lab_charge), 0) INTO lab_charge
    FROM lab_report
    WHERE lab_report.pid = pid;

    -- Getting bed charge
    SELECT COALESCE(SUM(bed_charges), 0) INTO bed_charge
    FROM admitted_patient
    WHERE admitted_patient.pid = pid;
    
    SET total_charges = lab_charge + bed_charge;

    -- Insert into the bill table
    INSERT INTO bill (pid, lab_charge, bed_charge, total_charges, bill_date)
    VALUES (pid, lab_charge, bed_charge, total_charges, CURDATE());
END //
DELIMITER ;

SHOW CREATE PROCEDURE GenerateBill;
call GenerateBill(13); 
select * from bill where pid=13;


-- print message of medical insurance expiry
call GenerateBill(19); 
select * from bill where pid=19;





