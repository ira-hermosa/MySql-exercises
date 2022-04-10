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

-- Using COUNT, get the number of cities in China.
SELECT country.code, country.name, COUNT(city.name) AS Number_of_city
FROM country
JOIN city
ON country.code=city.CountryCode WHERE country.name='China';

-- Using ORDER BY, & LIMIT, what country has the lowest population? 
SELECT name from country ORDER BY population ASC LIMIT 1;

-- Using aggregation, return the number of countries in the database. 
SELECT COUNT(Name) from country;

-- What are the top ten largest countries by population?
SELECT Name, Population from country ORDER BY Population DESC LIMIT 10;

-- List the top five most densely populated in Japan.
SELECT Name, Population FROM city WHERE CountryCode='JPN' ORDER BY Population DESC LIMIT 5;

-- List the names and country codes of every country which has Elisabeth II as its Head of State.
SELECT Code, Name, HeadofState from country WHERE HeadOfState = 'Elisabeth II';

-- List the top ten countries which have the smallest population-to-area ratio.
SELECT Name, Population/SurfaceArea AS P2A from country ORDER BY P2A ASC LIMIT 10;

-- List every unique world language, according to the World database.
SELECT DISTINCT language from countrylanguage;

-- What are the top 10 richest countries by GNP?
SELECT Name, GNP from country ORDER BY GNP DESC LIMIT 10;

-- What are the top 10 largest countries by surface area?
SELECT Name, SurfaceArea from country ORDER BY SurfaceArea DESC LIMIT 10;

-- List every country where over 50% of its population can speak French.
SELECT country.name, country.code,  countrylanguage.language
FROM country
JOIN countrylanguage
ON country.code=countrylanguage.CountryCode WHERE countrylanguage.language='French' AND countrylanguage.Percentage >50;

-- Which country has the worst life expectancy
SELECT Name, LifeExpectancy from country WHERE LifeExpectancy !=0 ORDER BY LifeExpectancy ASC Limit 1;

-- What is the most common government form? 
SELECT GovernmentForm, COUNT(*)AS Govt_count FROM country GROUP BY GovernmentForm ORDER BY Govt_count DESC;

-- Countries that have gained independence since records began
SELECT Name, IndepYear FROM country WHERE IndepYear IS NOT NULL ORDER BY IndepYear ASC;

