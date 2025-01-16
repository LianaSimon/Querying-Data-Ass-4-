# QUERYING DATA

## Querying Data for Country and Persons Tables-Overview

This project contains SQL scripts for creating and querying data in two tables: `Country` and `Persons`. The script demonstrates various SQL functionalities, including table creation, data insertion, and data retrieval through queries.


# SQL SCRIPT:

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




# SCREENSHOTS STEP-BY-STEP:

## STEP 1: Create the Country table

![image](https://github.com/user-attachments/assets/8423f1b9-bfd5-42db-b1b7-8df49304c7e2)

## STEP 2: Create the Persons table

![image](https://github.com/user-attachments/assets/4a2f4c3c-d4db-405e-940d-d9752d895d1a)

## STEP 3:Insert 10 rows into the Country table

![image](https://github.com/user-attachments/assets/a5b58870-7bab-4e0e-a918-af88e3b404c9)

![image](https://github.com/user-attachments/assets/5f8eae80-6f19-42c2-a9b6-9768d9a6272d)


## STEP 4:Insert 10 rows into the Persons table

![image](https://github.com/user-attachments/assets/3d018afc-0590-44c9-9888-aafad389254c)

## Query 1: List the distinct country names from the Persons table

![image](https://github.com/user-attachments/assets/4b65af63-4fd4-4a36-a618-9e929aa6d102)

## Query 2: Select first names and last names from the Persons table with aliases

![image](https://github.com/user-attachments/assets/251a4473-cc7b-4096-b43b-c31091b9bc0e)

## Query 3: Find all persons with a rating greater than 4.0

![image](https://github.com/user-attachments/assets/8aca8c28-c642-4e52-aacc-4e64d19ece3b)

## Query 4: Find countries with a population greater than 10 lakhs

![image](https://github.com/user-attachments/assets/ee478815-cf71-4889-8fef-af92bd5504e4)

## Query 5: Find persons who are from 'USA' or have a rating greater than 4.5

![image](https://github.com/user-attachments/assets/23073288-5238-4b7d-b13f-dea247853261)

## Query 6: Find all persons where the country name is NULL

![image](https://github.com/user-attachments/assets/2b060121-def6-4c19-a5e4-f8179c18827e)

## Query 7: Find all persons from the countries 'USA', 'Canada', and 'UK'

![image](https://github.com/user-attachments/assets/f0bdf584-2a9c-4a65-82da-eb9f8b1f5761)

## Query 8: Find all persons not from the countries 'India' and 'Australia'

![image](https://github.com/user-attachments/assets/21e9218e-61a7-49d8-9257-746f8c0007e5)

## Query 9: Find all countries with a population between 5 lakhs and 20 lakhs

![image](https://github.com/user-attachments/assets/8df094d5-76df-4061-901f-1d78e600a911)

## Query 10: Find all countries whose names do not start with 'C'

![image](https://github.com/user-attachments/assets/a1654568-d437-4015-9002-7788a047b374)


## Tables
1. **Country**:
   - `Id`: Primary Key
   - `Country_name`: Name of the country
   - `Population`: Population of the country
   - `Area`: Area of the country in square kilometers

2. **Persons**:
   - `Id`: Primary Key
   - `Fname`: First name of the person
   - `Lname`: Last name of the person
   - `Population`: Population of the person's country
   - `Rating`: Rating associated with the person
   - `Country_Id`: Foreign key referencing the `Country` table
   - `Country_name`: Name of the country the person belongs to

## Queries

1. List distinct country names from the `Persons` table.
  
2. Select first and last names from the `Persons` table with aliases.
 
3. Find all persons with a rating greater than 4.0.
   
4. Retrieve countries with a population greater than 10 lakhs.
   
5. Retrieve persons who are from the USA or have a rating greater than 4.5.
   
6. Find all persons where the country name is `NULL`.
   
7. Retrieve persons from the countries 'USA', 'Canada', and 'UK'.
   
8. Retrieve persons not from the countries 'India' and 'Australia'.
   
9. Retrieve countries with a population between 5 lakhs and 20 lakhs.
    
10. Retrieve countries whose names do not start with 'C'.

## Usage

1. Copy the SQL script into a database query editor of your choice.
2. Execute the script to create and populate the tables.
3. Run individual queries to explore the data.

## License

Feel free to use or modify this script for educational or professional purposes OR contact lianasimon77@gmail.com.










