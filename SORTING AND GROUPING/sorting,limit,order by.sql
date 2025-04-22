/* we will be understanding the concepts by solving questions */
/* working on order by and limit clause*/
/* 1. select top 5 samsung phones with biggest screen size */
select model, brand_name, screen_size from campusx.smartphones_cleaned_v6 where brand_name='samsung' 
order by screen_size desc limit 5;   /* limit helps to print how many rows needs to be printed in the result*/

/* 2. sort all the phones in descending order of their total number of cameras. */
select brand_name, model, num_rear_cameras + num_front_cameras as 'total_cameras' from campusx.smartphones_cleaned_v6 order by total_cameras desc;

/* 3. sort data on the bsis of ppi */
select model , round(sqrt(resolution_width*resolution_width + resolution_height*resolution_height)) / screen_size as 'ppi' from campusx.smartphones_cleaned_v6
order by ppi desc;

/* 4. select the phone with the 2nd highest battery capacity*/
select brand_name, model, battery_capacity from campusx.smartphones_cleaned_v6
 order by battery_capacity desc limit 1,1;

 /* select the phone with the second lowest battery capacity*/
select brand_name, model, battery_capacity from campusx.smartphones_cleaned_v6 
order by battery_capacity asc limit 1,1;

/* find the name and rating of the worst apple phone*/
select brand_name, model, rating/10 as 'Rating' from campusx.smartphones_cleaned_v6  
where brand_name='apple'
order by Rating asc limit 0,1;

/* asc means chote se bada and desc means badde se chota*/
/* sorting multiple coulmns in a table*/
select * from campusx.smartphones_cleaned_v6 
where brand_name='apple' order by brand_name asc, price asc;

/* 