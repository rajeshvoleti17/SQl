CREATE DATABASE Hosp;
use Hosp;
CREATE TABLE Doctors (
  DoctorID INT NOT NULL,
  DoctorName VARCHAR(255) NOT NULL,
  Specialization VARCHAR(255) NOT NULL
);
CREATE TABLE Patients (
  PatientID INT NOT NULL,
  PatientName VARCHAR(255) NOT NULL,
  Age INT NOT NULL,
  Gender VARCHAR(255) NOT NULL,
  AdmittedDate DATE NOT NULL
);
CREATE TABLE Visits (
  VisitID INT NOT NULL,
  PatientID INT NOT NULL,
  DoctorID INT NOT NULL,
  Diagnosis VARCHAR(255) NOT NULL,
  VisitDate DATE NOT NULL
);
INSERT INTO Doctors (DoctorID, DoctorName, Specialization)
VALUES
  (1, 'Smith', 'Cardiology'),
  (2, 'Brown', 'Neurology'),
  (3, 'Garcia', 'Oncology'),
  (4, 'Johnson', 'Gynecology'),
  (5, 'Lee', 'Dermatology');


INSERT INTO Patients (PatientID, PatientName, Age, Gender, AdmittedDate)
VALUES
  (1, 'John', 25, 'Male', '2022-01-01'),
  (2, 'Lisa', 29, 'Female', '2022-01-14'),
  (3, 'Tom', 35, 'Male', '2022-02-05'),
  (4, 'Sarah', 47, 'Female', '2022-03-01'),
  (5, 'Mike', 18, 'Male', '2022-03-15');


INSERT INTO Visits (VisitID, PatientID, DoctorID, Diagnosis, VisitDate)
VALUES
  (1, 1, 1, 'Heart Disease', '2022-01-02'),
  (2, 1, 1, 'High Blood Pressure', '2022-01-15'),
  (3, 2, 2, 'Migraine', '2022-01-20'),
  (4, 3, 3, 'Cancer', '2022-02-06'),
  (5, 4, 4, 'Pregnancy', '2022-03-02'),
  (6, 5, 5, 'Acne', '2022-03-18');
  
#Q1. List all patients who were admitted in February 2022 in descending order of their age. [  Without using JOIN syntax ].

SELECT PatientName, Age, Gender, AdmittedDate 
FROM Patients 
WHERE AdmittedDate BETWEEN '2022-02-01' AND '2022-02-28' 
ORDER BY Age DESC;

#Q2. List all patients with their respective doctors and the number of visits made by each patient to that doctor.

SELECT Patients.PatientName, Doctors.DoctorName, COUNT(*) AS NumberOfVisits 
FROM Visits 
JOIN Patients ON Visits.PatientID = Patients.PatientID 

#Q3. Count the number of visits made by each doctor and sort the result in ascending order of the doctor's name. 

SELECT DoctorName, COUNT(*) AS NumberOfVisits 
FROM Visits 
JOIN Doctors ON Visits.DoctorID = Doctors.DoctorID 
GROUP BY DoctorName 
ORDER BY DoctorName ASC;





#Q1. List all the patients who were admitted before 2022-02-01, ordered by their age in ascending order.

SELECT PatientName
FROM Patients
WHERE AdmittedDate < '2022-02-01'
ORDER BY Age ASC;






