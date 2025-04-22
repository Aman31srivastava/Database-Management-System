/* GROUPING*/

/* SIMPLE GROUP BY AND USE OF COUNT*/
SELECT brand_name , count(*) from campusx.smartphones_cleaned_v6 
group by brand_name;

/*1. GROUP SMARTPHONES BY PRICE AND GET THE COUNT, AVG PRICE, MAX RATING, AVG SCREEN SIZE AND AVG BATTERY CAPACITY*/
SELECT brand_name, COUNT(*) <
