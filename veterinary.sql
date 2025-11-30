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
