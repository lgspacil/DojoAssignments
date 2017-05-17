SELECT countries.name, languages.language, languages.percentage
FROM countries
JOIN languages ON countries.id = languages.country_id
WHERE languages.language = 'Slovene'
ORDER BY languages.percentage DESC;


SELECT countries.name, COUNT(cities.name) as num_cities
FROM countries
JOIN cities ON cities.country_id = countries.id
group by countries.name
order by num_cities desc;



Select cities.name, cities.population
FROM countries
join cities on cities.country_id = countries.id
where countries.name = 'Mexico' and cities.population > 500000


select languages.language, countries.name, languages.percentage
From countries
join languages on languages.country_id = countries.id
where languages.percentage > '89'
order by languages.percentage desc


select countries.name, countries.surface_area, countries.population
from countries
where countries.surface_area < 501 and countries.population > 100000


select countries.name, countries.government_form, countries.capital, countries.life_expectancy
from countries
where countries.capital > 200 and countries.life_expectancy > 75


select countries.name, cities.name, cities.district, cities.population
from countries
join cities on cities.country_id = countries.id
where cities.population > 500000 and cities.district = 'Buenos Aires'


select countries.region, count(countries.name) as countries
from countries
group by countries.region
order by countries desc


