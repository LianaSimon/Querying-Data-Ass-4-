-- SQL Script for Querying Data(Assignment-4)
CREATE DATABASE TABLES;
USE TABLES;

-- Step 1: Create the Country table
CREATE TABLE COUNTRY(
Id INT PRIMARY KEY,
Country_name VARCHAR(50),
Population INT, 
Area INT);
DESC COUNTRY;


-- Step 2: Create the Persons table
CREATE TABLE PERSONS(
ID INT PRIMARY KEY,
F_name VARCHAR(50),
L_name VARCHAR(50),
Population INT,
Rating DECIMAL(3,1),
Country_Id INT,
Country_name VARCHAR(50),
FOREIGN KEY (Country_Id) REFERENCES COUNTRY(Id)
);
DESC PERSONS;

-- Step 3: Insert 10 rows into the Country table
INSERT INTO Country (Id, Country_name, Population, Area)
VALUES 
(1, 'USA', 331000000, 9833520),
(2, 'Canada', 38000000, 9984670),
(3, 'UK', 67000000, 243610),
(4, 'India', 1380000000, 3287263),
(5, 'Australia', 25000000, 7692024),
(6, 'China', 1440000000, 9596960),
(7, 'Brazil', 213000000, 8515767),
(8, 'Germany', 83000000, 357022),
(9, 'France', 67000000, 551695),
(10, 'Japan', 126000000, 377975);
SELECT * FROM Country;

-- Step 4: Insert 10 rows into the Persons table
INSERT INTO PERSONS(ID, F_name, L_name, Population, Rating, Country_Id, Country_name)
VALUES 
(1, 'John', 'Doe', 331000000, 4.5, 1, 'USA'),
(2, 'Alice', 'Smith', 38000000, 4.8, 2, 'Canada'),
(3, 'Robert', 'Brown', 67000000, 4.1, 3, 'UK'),
(4, 'Emily', 'Davis', 1380000000, 3.9, 4, 'India'),
(5, 'Michael', 'Taylor', 25000000, 4.0, 5, 'Australia'),
(6, 'Sophia', 'Wilson', NULL, 4.7, NULL, NULL),
(7, 'David', 'Johnson', 213000000, 4.6, 7, 'Brazil'),
(8, 'Olivia', 'Martinez', 83000000, 4.9, 8, 'Germany'),
(9, 'James', 'Anderson', 67000000, 3.5, 9, 'France'),
(10, 'Liam', 'White', 126000000, 4.3, 10, 'Japan');
SELECT * FROM Persons;

-- Query 1: List the distinct country names from the Persons table
SELECT DISTINCT Country_name FROM PERSONS;

-- Query 2: Select first names and last names from the Persons table with aliases
SELECT F_name AS FIRST_NAME,L_name AS LAST_NAME FROM PERSONS;

-- Query 3: Find all persons with a rating greater than 4.0
SELECT * FROM PERSONS WHERE Rating>4.0;

-- Query 4: Find countries with a population greater than 10 lakhs
SELECT * FROM COUNTRY WHERE Population>1000000;

-- Query 5: Find persons who are from 'USA' or have a rating greater than 4.5
SELECT * FROM PERSONS WHERE Country_name='USA' OR Rating>4.5;

-- Query 6: Find all persons where the country name is NULL
SELECT * FROM PERSONS WHERE Country_name IS NULL;

-- Query 7: Find all persons from the countries 'USA', 'Canada', and 'UK'
SELECT * FROM PERSONS WHERE Country_name IN('USA','CANADA','UK');

-- Query 8: Find all persons not from the countries 'India' and 'Australia'
SELECT * FROM PERSONS WHERE Country_name NOT IN('India','Australia');

-- Query 9: Find all countries with a population between 5 lakhs and 20 lakhs
SELECT * FROM COUNTRY WHERE POPULATION BETWEEN 500000 AND 2000000;

-- Query 10: Find all countries whose names do not start with 'C'
SELECT * FROM COUNTRY WHERE Country_name NOT LIKE 'C%';
