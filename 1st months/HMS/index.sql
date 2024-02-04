use HOSPITAL_SYSTEM;
-- Creating an index on the doctor's phone number for faster searches
CREATE INDEX indx_doctor_phone ON doctor (phone);
 show indexes from doctor;