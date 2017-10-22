ALTER SESSION SET CURRENT_SCHEMA = XF;

SELECT country.Name FROM country INNER JOIN (SELECT CountryID, SUM(Population) AS overallPopulation FROM City GROUP BY CountryID) countryPopulation
WHERE countryPopulation.overallPopulation > 400
AND country.CountryID = countryPopulation.CountryID

ALTER SESSION SET CURRENT_SCHEMA = XF;

SELECT country.Name FROM Country WHERE (SELECT COUNT(*) FROM City allData INNER JOIN Building homes ON homes.CityID = allData.CityID) = 0