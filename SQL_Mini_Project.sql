--Question 1:
--Top 5 Borough based on Offense Description Combinition.

SELECT BORO_NM, OFNS_DESC, COUNT(*) AS incident_number
FROM "data_district_crime"
GROUP BY BORO_NM, OFNS_DESC
ORDER BY incident_number DESC
LIMIT 5

--Question 2:
--How many incidents did occurred per hour?

SELECT h, COUNT(*) FROM "data_district_crime" GROUP BY h  ORDER BY CAST(h AS unsigned) ASC

This line of code shows the number of crime for each hour.
