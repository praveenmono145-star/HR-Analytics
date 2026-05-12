CREATE DATABASE IF NOT EXISTS HR_DB;

USE HR_DB;
-- ================================================================================ HR_1 =================================================================================================================================================================================================================

CREATE TABLE HR_1 (Age INT,Attrition VARCHAR(20),BusinessTravel VARCHAR(100),DailyRate INT,Department VARCHAR(100),DistanceFromHome INT,Education INT,EducationField VARCHAR(100),EmployeeCount INT,
EmployeeNumber INT PRIMARY KEY,	EnvironmentSatisfaction INT,Gender VARCHAR(50),HourlyRate INT,JobInvolvement INT,JobLevel INT,JobRole VARCHAR(100),JobSatisfaction INT, MaritalStatus VARCHAR(50));

LOAD DATA LOCAL INFILE 'C:/Users/prave/OneDrive/HR Analytics/HR Datasets/HR_1.csv'
INTO TABLE HR_1
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

 -- IF YOU GET ERROR : use this : SET GLOBAL local_infile = 1;  {Error Code: 3948. Loading local data is disabled; this must be enabled on both the client and server sides}
-- SHOW VARIABLES LIKE 'local_infile'; CHECKIING THE GLOBAL VARIBLE TURN ON or OFF

-- ================================================================================ HR_2 =================================================================================================================================================================================================================

CREATE TABLE HR_2 (Employee_ID INT PRIMARY KEY, MonthlyIncome INT,MonthlyRate INT,NumCompaniesWorked INT,Over18 VARCHAR(20), OverTime VARCHAR(50),PercentSalaryHike INT, PerformanceRating INT,RelationshipSatisfaction INT,
StandardHours INT,StockOptionLevel INT,TotalWorkingYears INT,TrainingTimesLastYear INT,WorkLifeBalance INT,YearsAtCompany INT,YearsInCurrentRole INT,YearsSinceLastPromotion INT,YearsWithCurrManager INT);


LOAD DATA LOCAL INFILE 'C:/Users/prave/OneDrive/HR Analytics/HR Datasets/HR_2.csv'
INTO TABLE HR_2
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;


-- ========================================================================================= DATA VALIDATIONS ========================================================================================================================================================================================================
SELECT *
FROM HR_2;

DESCRIBE HR_1;

SELECT COUNT(*) AS total_rows,COUNT(Age) AS age_not_null
FROM HR_1;

SELECT DISTINCT OverTime FROM HR_2;

-- ========================================================================================= ADD FOREIGN KEY & ADDITIONAL COLUMN ========================================================================================================================================================================================================

ALTER TABLE HR_2 ADD CONSTRAINT fk_employee FOREIGN KEY (Employee_ID)
REFERENCES HR_1(EmployeeNumber);

ALTER TABLE HR_1
ADD Attrition_flag INT;

UPDATE HR_1
SET Attrition_flag = CASE WHEN Attrition = "Yes" THEN 1 ELSE 0 END;


-- SET SQL_SAFE_UPDATES  = 0; Safe mode to off 
-- SET SQL_SAFE_UPDATES  = 1; -- Safe mode back on

-- ========================================================================================= Questions ========================================================================================================================================================================================================

-- 1.Average Attrition rate for all Departments


SELECT Department,ROUND(AVG(Attrition_flag) * 100,2)AS Average_Attrition
FROM HR_1 
GROUP BY Department
ORDER BY Average_Attrition DESC;

-- 2 Avg Hourly Rate of Male Research Scientist

SELECT ROUND(AVG(HourlyRate),2) AS Avg_Hourly_Rate
FROM HR_1 
WHERE Gender = "Male" AND JobRole = "Research Scientist";

-- 3.Attrition rate Vs Monthly income stats

SELECT CASE 
   WHEN HR2.MonthlyIncome <=10000 THEN "Low Income"
   WHEN HR2.MonthlyIncome <=20000 THEN "Medium Income"
   WHEN HR2.MonthlyIncome <= 40000 THEN "High Income"
ELSE "Very high Income" END AS Income_Band,
ROUND(AVG(HR1.Attrition_flag) * 100,2)AS Attrition_rate
FROM HR_1 AS HR1 INNER JOIN HR_2 AS HR2 ON  HR1.EmployeeNumber = HR2.Employee_ID
GROUP BY Income_Band
ORDER BY Attrition_rate DESC;

-- 4.Average working years for each Department

SELECT HR1.Department,ROUND(AVG(HR2.TotalWorkingYears),2)AS Avg_Working_Years
FROM HR_1 AS HR1 INNER JOIN HR_2 AS HR2 ON  HR1.EmployeeNumber = HR2.Employee_ID
GROUP BY HR1.Department
ORDER BY Avg_Working_Years DESC;

-- 5.Job Role Vs Work life balance

SELECT HR1.JobRole, ROUND(AVG(HR2.WorkLifeBalance),3) AS Work_Life_Balance
FROM HR_1 AS HR1 INNER JOIN HR_2 AS HR2 ON  HR1.EmployeeNumber = HR2.Employee_ID
GROUP BY HR1.JobRole
ORDER BY Work_Life_Balance ASC;

-- 6.Attrition rate Vs Year since last promotion relation

SELECT CASE
 WHEN HR2.YearsSinceLastPromotion <= 5 THEN "0-05"
 WHEN HR2.YearsSinceLastPromotion <=10 THEN "06-10"
 WHEN HR2.YearsSinceLastPromotion <=15 THEN "11-15"
 WHEN HR2.YearsSinceLastPromotion <=20 THEN "16-20"
 WHEN HR2.YearsSinceLastPromotion <=30 THEN "21-30" ELSE "31-40" END AS Years_since_last_promotion_band,
ROUND(AVG(HR1.Attrition_flag) * 100,2) AS Attrition_rate
FROM HR_1 AS HR1 INNER JOIN HR_2 AS HR2 ON  HR1.EmployeeNumber = HR2.Employee_ID
GROUP BY Years_since_last_promotion_band
ORDER BY Years_since_last_promotion_band  ASC;
