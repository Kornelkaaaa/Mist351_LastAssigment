create database Assigment4KB;

use Assigment4KB;

CREATE TABLE DONOR(
    -> DonorID int not null primary key,
    -> DonorFN varchar(10),
    -> DonorLN varchar(10));

INSERT INTO DONOR VALUES
    -> (1, "Kornelia", "Buszka");
 INSERT INTO DONOR VALUES
    -> (2, "Nina", "Kawka"),
    -> (3, "Zosia", "Wozniak"),
    -> (4, "Weronika", "Pichola"),
    -> (5, "Weonika", "Biegan"),
    -> (6, "Weronika", "Chmiel");


CREATE TABLE NUTRITION (
    -> NutririonID INT NOT NULL PRIMARY KEY);

INSERT INTO NUTRITION (NutririonID) VALUES (1);
INSERT INTO NUTRITION VALUES
    -> (2),
    -> (3);

CREATE TABLE NUTRITION_SPECIALIZATION ( 
    NutririonID INT, 
    Nutrition_Specialization VARCHAR(100), 
    FOREIGN KEY (NutririonID) REFERENCES NUTRITION(NutririonID));

ALTER TABLE NUTRITION
    -> RENAME COLUMN NutririonID to NutritionID;

INSERT INTO NUTRITION_SPECIALIZATION VALUES
    -> (1, "Post workout snacks");

INSERT INTO NUTRITION_SPECIALIZATION VALUES
    -> (2, "Breakfasts"),
    -> (3, "Hydration");

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

 CREATE TABLE TEAM_DISCIPLINE (
    -> TeamID INT,
    -> Team_Discipline VARCHAR(100),
    -> FOREIGN KEY (TeamID) REFERENCES TEAM(TeamID)
    ->);

CREATE TABLE ATHLETE (
    -> AthleteID INT NOT NULL PRIMARY KEY,
    -> AthleteFN VARCHAR(10),
    -> AthleteLN VARCHAR(20),
    -> AthleteHightCM INT,
    -> AthleteGPA DECIMAL(3,2),
    -> TeamID INT,
    -> FOREIGN KEY (TeamID) REFERENCES TEAM(TeamID));

CREATE TABLE FLYER (
    -> ArmRangeCM INT,
    -> AthleteID INT NOT NULL PRIMARY KEY,
    -> FOREIGN KEY (AthleteID) REFERENCES ATHLETE(AthleteID)
    -> );

CREATE TABLE BACKSTROKER (
    -> UnderWaterKicks INT,
    -> AthleteID INT NOT NULL PRIMARY KEY,
    -> FOREIGN KEY (AthleteID) REFERENCES ATHLETE(AthleteID)
    -> );

CREATE TABLE BREASTROKER (
    -> DQStrike INT,
    -> AthleteID INT NOT NULL PRIMARY KEY,
    -> FOREIGN KEY (AthleteID) REFERENCES ATHLETE(AthleteID)
    -> );

CREATE TABLE FREESTROKER (
    -> VO2MAX DECIMAL(5,2),
    -> AthleteID INT NOT NULL PRIMARY KEY,
    -> FOREIGN KEY (AthleteID) REFERENCES ATHLETE(AthleteID)
    -> );

CREATE TABLE DISTANCE (
    -> OneMileTimeS DECIMAL(6,2),
    -> AthleteID INT NOT NULL PRIMARY KEY,
    -> FOREIGN KEY (AthleteID) REFERENCES ATHLETE(AthleteID)
    -> );

CREATE TABLE SPRINT (
    -> 50YardsTime DECIMAL(4,2),
    -> AthleteID INT NOT NULL PRIMARY KEY,
    -> FOREIGN KEY (AthleteID) REFERENCES ATHLETE(AthleteID)
    -> );

CREATE TABLE MONEYTRANSFER (
    -> MTDate DATE,
    -> MTAmount DECIMAL(12,2),
    -> DonorID INT,
    -> TeamID INT,
    -> FOREIGN KEY (DonorID) REFERENCES DONOR(DonorID),
    -> FOREIGN KEY (TeamID) REFERENCES TEAM(TeamID)
    -> );


