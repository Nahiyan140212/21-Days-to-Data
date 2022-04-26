--Question 1:
--Get the top 5 Borough based on Offense Description Combinition.

SELECT BORO_NM, OFNS_DESC, COUNT(*) AS incident_number
FROM "data_district_crime"
GROUP BY BORO_NM, OFNS_DESC
ORDER BY incident_number DESC
LIMIT 5

--Question 2:
--How many incidents did occurred per hour?

SELECT h, 
COUNT(*) 
FROM "data_district_crime" 
GROUP BY h  
ORDER BY CAST(h AS unsigned) ASC

--This line of code shows the number of crime for each hour.

--A crime was happend in late March, 2018 which was a burglary at a chair store in the Bronx. Get the Date, Time, Latitude and Longitude of the crime location.
SELECT CMPLNT_TO_DT, CMPLNT_TO_TM, Longitude, Latitude  
FROM 'data_district_crime'  
WHERE BORO_NM  LIKE 'Bronx' 
AND OFNS_DESC LIKE 'burglary' 
AND PREM_TYP_DESC LIKE 'CHAIN STORE' 
ORDER BY CMPLNT_TO_DT DESC  
LIMIT 1;
