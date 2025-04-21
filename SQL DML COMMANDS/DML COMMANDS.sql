/* WORKING ON REAL LIFE DATA SETS */

/*select statement */

/* selecting the entire table*/
select * from campusx.smartphones_cleaned_v6;

/* seelcting particular columns */
select brand_name, model, price from campusx.smartphones_cleaned_v6;

/* selecting ratings of the phone and dividing by 10*/
select brand_name, model, rating/10 from campusx.smartphones_cleaned_v6;

/* working on as alias*/
select brand_name , model, processor_brand as Processor from campusx.smartphones_cleaned_v6;

/* distinct statement-->  used to take out the unique values, filtering the columns
*/

select distinct(brand_name) as 'all brands' from campusx.smartphones_cleaned_v6;
select distinct processor_brand as 'Processor' from campusx.smartphones_cleaned_v6;
select distinct os as 'operating systems' from campusx.smartphones_cleaned_v6;

select distinct brand_name, processor_brand from campusx.smartphones_cleaned_v6;

/* filtering rows , we have to use WHERE clause*/
select brand_name from campusx.smartphones_cleaned_v6 where brand_name='apple';
select  distinct brand_name from campusx.smartphones_cleaned_v6 where price > 50000;

/* working with between */
select brand_name, model from campusx.smartphones_cleaned_v6 where price between 10000 and 20000;

/* working with price and between */
select brand_name, model, rating/10 as 'RATING', processor_brand from campusx.smartphones_cleaned_v6 where price < 20000 and rating > 8 and processor_brand='snapdragon';

/* selecting all the samsung phones */

select brand_name, model from campusx.smartphones_cleaned_v6 where brand_name= 'samsung';

/* selecting all the phone whose price is > 50000*/

select brand_name, model, price from campusx.smartphones_cleaned_v6 where price > 50000;

/* selecting phone price between 10000 and 250000
*/
select brand_name, model, price from campusx.smartphones_cleaned_v6 where price between 10000 and 25000;

/* find all phones with rating > 8.0 and price > 20000
*/

select brand_name, model, price, rating as 'Rating' from campusx.smartphones_cleaned_v6 where price > 20000 and rating > 80 ;

/* find all samsung phones with ram > 8gb*/

select brand_name,  model, ram_capacity, price from campusx.smartphones_cleaned_v6 where brand_name='samsung' and ram_capacity > 8
;

/*  find all samsung phones with snapdragon processor */

select brand_name, model, processor_brand, price from campusx.smartphones_cleaned_v6 where brand_name='samsung' and processor_brand='snapdragon';

/* order of sequence of statements--->  F J W G H S D 0 */

/* SELECTION OF ROWS AND COLUMNS IN A DIFFERENT MANNER */
/* usage of IN and NOT IN */
select * from campusx.smartphones_cleaned_v6 where processor_brand in ('snapdragon', 'ios' );

select * from campusx.smartphones_cleaned_v6 where processor_brand not in ('snapdragon');


/* updting the table name */
/*
update campusx.smartphones
set processor_brand='dimensity' where processor_brand='mediatek';
select model, processor_brand from campusx.smartphone_cleaned_v6 where processor_brand='dimensity';
*/
/* updating more than one columns in a table */

/* deleting*/
select * from campusx.smartphones_cleaned_v6 where price > 200000;
delete from campusx.smartphones_cleaned_v6 where price > 200000;
