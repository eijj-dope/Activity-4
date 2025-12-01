CREATE DATABASE veterinary;
>>>>>>> c9d6ec6f75d0e51a92461f9e949e3f0b0ae634d3

CREATE TABLE owners(
    ownerid INT PRIMARY KEY,
    ofirstname VARCHAR(50),
    olastname VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE animals(
    animalid INT PRIMARY KEY,
    name VARCHAR(50),
    species VARCHAR(50),
    breed VARCHAR(50)
    dateofbirth DATE,
    gender VARCHAR(10),
    color VARCHAR(50),
    ownerid INT,
    FOREIGN KEY (ownerid) REFERENCES owners(ownerid);
);

CREATE TABLE appointments (
    appointid INT PRIMARY KEY,
    animalid INT,
    appointdate DATE,
    reason VARCHAR(255),
    FOREIGN KEY (animalid) REFERENCES animals(animalid)
);

CREATE TABLE doctors (
    doctorid INT PRIMARY KEY,
    dfirstname VARCHAR(50),
    dlastname VARCHAR(50),
    speciality VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE invoices (
    invoiceid INT PRIMARY KEY,
    appointid INT,
    totalamount DECIMAL(10,2),
    paymenttime TIME,
    FOREIGN KEY (appointid) REFERENCES appointments(appointid)
);

CREATE TABLE medicalrecords (
    recordid INT PRIMARY KEY,
    animalid INT,
    recorddate DATETIME,
    doctorid INT,
    diagnosis VARCHAR(255),
    prescription VARCHAR(255),
    notes TEXT,
    FOREIGN KEY (animalid) REFERENCES animals(animalid),
    FOREIGN KEY (doctorid) REFERENCES doctors(doctorid)
);

INSERT INTO owners(ownerid, ofirstname, olastname, address, phone, email) VALUES
(1, 'Russel', 'Flores', 'San Miguel', '09949174783', 'russelchristianflores022@gmail.com'),
(2, 'Aldred', 'Olan', 'San felipe', '09179876543', 'aldredolan111@gmail.com'),
(3, 'Jayson', 'Belchiz', 'Banay-banay', '09171112222', 'jayson1@gamil.com'),
(4, 'Marie', 'Gallosa', 'Sabang', '09173334444', 'raemarie23@gmail.com'),
(5, 'Joy', 'Redota', 'Lipa', '09174445555', 'joyredota@gmail.com'),
(6, 'Paul', 'Porto', 'San Juan', '09175556666', 'paulportowalangcalcu@gmail.com'),
(7, 'Mae', 'Mae', 'Kawit', '09176667777', 'maemae2x@gmail.com'),
(8, 'Hannah', 'Jaspe', 'Rosario', '09177778888', 'jowanibabu@gmail.com'),
(9, 'Mark', 'Berte', 'Batangas', '09178889999', 'sibabu@gmail.com'),
(10,'Arvin', 'Aquino', 'Lipa', '09179990000', 'tenor1@gmail.com');

INSERT INTO animals(animalid, name, species, breed, dateofbirth, gender, color, ownerid) VALUES
(1, 'Christian', 'Dog', 'Bulldog', 2020-06-01, 'Male', 'White', 1),
(2, 'John', 'Cat', 'Siberian', 2025-12-01, 'Female', 'Pink', 2),
(3, 'Prinz', 'Dog', 'Dobermann', 2023-10-06, 'Male', 'Black', 3),
(4, 'Cheska', 'Cat', 'Sphynx', 2024-06-03, 'Female', 'White', 4),
(5, 'Hope', 'Cat', 'Persian', 2020-07-08, 'Female', 'Green', 5),
(6, 'Albin', 'Cat', 'Burmese', 2024-02-14, 'Male', 'Brown', 6),
(7, 'Maemae', 'Dog', 'Chihuahua', 2022-07-01, 'Female', 'Brown', 7),
(8, 'Babu', 'Cat', 'Siberian', 2019-10-11, 'Female', 'White', 8),
(9, 'Tahimiklang', 'Dog', 'Bulldog', 2020-04-26, 'Male', 'White', 9),
(10, 'Onyx', 'Dog', 'Shih Tzu', 2020-10-13, 'Male', 'Black', 10);

INSERT INTO appointments(appointid, animalid, appointdate, reason) VALUES
(1, 3, '2025-12-01 09:00:00', 'Vaccination'),          
(2, 3, '2025-12-01 10:00:00', 'Check-up'),             
(3, 3, '2025-12-01 11:00:00', 'Follow-up'),            
(4, 1, '2025-12-01 09:30:00', 'Surgery consult'),
(5, 2, '2025-12-01 14:00:00', 'Vaccination'),
(6, 4, '2025-12-01 13:00:00', 'Dental cleaning'),
(7, 5, '2025-12-01 08:00:00', 'Flea treatment'),
(8, 6, '2025-12-01 16:00:00', 'Spaying'),
(9, 7, '2025-12-01 10:30:00', 'Allergic reaction'),
(10,10, '2025-12-01 12:00:00', 'Eye infection');

INSERT INTO doctors(doctorid, dfirstname, dlastname, speciality, phone, email) VALUES
(1, 'Dr.Maria', 'Santos', 'General Veterinarian', '987-654-3210', 'maria@example.com'),
(2, 'Dr.Antonio', 'Gonzales', 'Feline Specialist', '555-123-4567', 'antonio@example.com'),
(3, 'Dr.Felipe', 'Luna', 'Orthopedic Specialist', '111-222-3333', 'felipe@example.com'),
(4, 'Dr.Sofia', 'Reyes', 'Dermatology Specialist', '999-888-7777', 'sofia@xample.com'),
(5, 'Dr.Luis', 'Torres', 'Surgery Specialist', '123-555-7777', 'luis@example.com'),
(6, 'Dr.Carmen', 'Fernandez', 'Opthalmology Specialist', '333-222-1111', 'carmen@example.com');

INSERT INTO invoices(invoiceid, appointid, totalamount, paymentdate)
VALUES
(1, 1, 50.00, '09:30:00'),
(2, 2, 75.00, '14:15:00'),
(3, 3, 100.00, '11:00:00'),
(4, 4, 200.00, '13:45:00'),
(5, 5, 80.00, '10:30:00'),
(6, 6, 30.00, '15:00:00'),
(7, 7, 75.00, '09:15:00'),
(8, 8, 150.00, '16:30:00'),
(9, 9, 60.00, '14:45:00'),
(10, 10, 40.00, '11:30:00');

INSERT INTO medicalrecords (recordid, animalid, recorddate, doctorid, diagnosis, prescription, notes)
VALUES 
    (1, 1, '2023-01-05 00:00:00', 1, 'Health check', 'N/A', 'Regular checkup, no issue detected'),
    (2, 2, '2023-01-10 00:00:00', 1, 'Vaccination', 'Vaccine X', 'Administered vaccination X as per schedule'),
    (3, 3, '2023-02-02 00:00:00', 3, 'Sprained leg', 'Pain Medication', 'Rest recommended for two weeks'),
    (4, 4, '2023-02-15 00:00:00', 1, 'Dental cleaning', 'N/A', 'Completed dental cleaning procedure'),
    (5, 5, '2023-03-10 00:00:00', 4, 'Skin infection', 'Antibiotics', 'Prescribed antibiotics for skin infection'),
    (6, 6, '2023-03-10 00:00:00', 2, 'Flea infestation', 'Flea Treatment', 'Administered flea treatment'),
    (7, 7, '2023-04-12 00:00:00', 1, 'Vaccination', 'Vaccine Y', 'Administered vaccination Y as per schedule'),
    (8, 8, '2023-04-18 00:00:00', 5, 'Spaying', 'N/A', 'Successfully performed spaying surgery'),
    (9, 9, '2023-05-02 00:00:00', 4, 'Allergic reaction', 'Antihistamines', 'Allergic reaction due to food prescribed antihistamine'),
    (10, 10, '2023-05-20 00:00:00', 6, 'Conjunctivitis', 'Eye drops', 'Prescribed eye drops for conjunctivitis');

ALTER TABLE owners ADD COLUMN registereddate DATE;

ALTER TABLE invoices RENAME COLUMN paymenttime to paymentdate;

ALTER TABLE invoices RENAME COLUMN paymentdate TO paymenttime;

DELETE FROM appointments WHERE animalid = 2; --sir walang animal na simba samin

UPDATE doctors SET dlastname = 'Reyes-Gonzales' WHERE doctorid = 4;

SELECT DISTINCT species FROM animals;

SELECT SUM(totalamount) AS totalsales FROM invoices;

SELECT o.ownerid, o.ofirstname, o.olastname, COUNT(a.appointid) AS total_appointments
FROM owners o
JOIN animals an ON o.ownerid = an.ownerid
JOIN appointments a ON an.animalid = a.animalid
WHERE o.ownerid = 1       
GROUP BY o.ownerid, o.ofirstname, o.olastname;

SELECT an.animalid, an.name AS animal_name, an.species, COUNT(ap.appointid) AS total_appointments --sir walang animal na whiskers samin
FROM animals an
JOIN appointments ap ON an.animalid = ap.animalid
GROUP BY an.animalid, an.name, an.species
ORDER BY total_appointments DESC
LIMIT 1;

