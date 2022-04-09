USE world;

SHOW tables;
DESCRIBE city;
DESCRIBE country;
DESCRIBE countrylanguage;

SELECT * from city;
SELECT * from country;
SELECT * from countrylanguage;

-- Using COUNT, get the number of cities in the USA 
SELECT COUNT(name) from city WHERE CountryCode='USA';

-- Find out what the population and life expectancy is for people in Argentina 
SELECT Population, LifeExpectancy from country WHERE name='Argentina';

-- Using IS ORDER BY, LIMIT, what country has the highest life expectancy? 
SELECT name from country ORDER BY LifeExpectancy desc LIMIT 1;

-- Using JOIN … ON, what is the capital of Spain (ESP)?
Select country.Name AS Country_name, city.Name As Capital_city
FROM country
JOIN city
ON city.id=country.capital WHERE country.name = 'Spain';


