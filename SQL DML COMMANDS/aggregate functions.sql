/* FUNCTIONS IN MYSQL */
/* USER-DFIEND AND BUILT IN FUNCTIONS ARE THERE */

/* built in has aggregate functions*/

/* aggregate fucntions consists of avg, min, max, count etc*/

/* find the max price of a phone in our database;*/
select   max(price) from campusx.smartphones_cleaned_v6;

/* find the min price of a phone*/

select min(ram_capacity) from campusx.smartphones_cleaned_v6;

/* find the price of the costliest samsing phone */

select brand_name, max(price) from campusx.smartphones_cleaned_v6 where brand_name='samsung';

/* get avg rating of apple brand phone */
select brand_name, avg(rating/10) from campusx.smartphones_cleaned_v6 where brand_name='apple';


/* count the number of apple phone*/
select count(*) from campusx.smartphones_cleaned_v6 where brand_name='apple';

/* unique count of different columns*/

select count(distinct (brand_name))from campusx.smartphones_cleaned_v6 where brand_name='apple';

/* standard deviation in mysql*/

select std(screen_size)  from campusx.smartphones_cleaned_v6 where brand_name='samsung';

/* variance */

select variance(screen_size) from campusx.smartphones_cleaned_v6 where brand_name='samsung';

/* scalar functions--- > abs, round, ceil floor */

/* abs means absolute which converts the negative values into positive */
/* ceil floor , for example like: 4.1--> 5*/


