create database Assigment4KB;

use Assigment4KB;

CREATE TABLE DONOR(
    -> DonorID int not null primary key,
    -> DonorFN varchar(10),
    -> DonorLN varchar(10));

INSERT INTO DONOR VALUES
    -> (1, "Kornelia", "Buszka");

CREATE TABLE NUTRITION (
    -> NutririonID INT NOT NULL PRIMARY KEY);

INSERT INTO NUTRITION (NutririonID) VALUES (1);

CREATE TABLE NUTRITION_SPECIALIZATION ( 
    NutririonID INT, 
    Nutrition_Specialization VARCHAR(100), 
    FOREIGN KEY (NutririonID) REFERENCES NUTRITION(NutririonID));

ALTER TABLE NUTRITION
    -> RENAME COLUMN NutririonID to NutritionID;

INSERT INTO NUTRITION_SPECIALIZATION VALUES
    -> (1, "Post workout snacks");

CREATE TABLE FACILITY (
    -> FacilityNum INT NOT NULL PRIMARY KEY,
    -> FacilityAdrss VARCHAR(75),
    -> FacilityCity VARCHAR(20),
    -> FacilityCountry VARCHAR(25),
    -> FacilityCapacuty INT
    -> );

INSERT INTO FACILITY VALUES
    -> (1, "Lindego 20", "Warsaw", "Poland", "250");

CREATE TABLE TEAM (
    -> TeamID INT NOT NULL PRIMARY KEY,
    -> TeamName VARCHAR(20),
    -> FacilityNum INT,
    -> DonorID INT,
    -> NutritionID INT,
    -> FOREIGN KEY (FacilityNum) REFERENCES FACILITY(FacilityNum),
    -> FOREIGN KEY (DonorID) REFERENCES DONOR(DonorID),
    -> FOREIGN KEY (NutritionID) REFERENCES NUTRITION(NutritionID)
    -> );
