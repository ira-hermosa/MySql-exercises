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

-- Using JOIN … ON, list all the languages spoken in the 'Southeast Asia' region.
Select country.name,region, countrylanguage.language
FROM country
JOIN countrylanguage
ON country.code=countrylanguage.CountryCode WHERE country.region='Southeast Asia';

-- Select 25 cities around the world that start with the letter 'F' in a single SQL query.
SELECT * from city where name LIKE 'F%' LIMIT 25;

