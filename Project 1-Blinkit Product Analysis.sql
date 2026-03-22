
create database ft_p;

use ft_p;
#1.	Import Data from table Grocery Sales using the provided CSV File.

select * from blinkit;

#2.	Write an SQL query to show all Item_Identifier

select item_identifier from blinkit;

#3.Write an SQL query to show count of total Item_Identifier.

select count(item_identifier) from blinkit;

#4.Write an SQL query to show maximum Item Weight.

select max(item_weight) from blinkit;

#5.Write an SQL query to show minimum Item Weight.

select min(item_weight) from blinkit;

#6.Write an SQL query to show average Item_Weight.

select avg(item_weight) from blinkit;

#7.Write an SQL query to show count of Item_Fat_Content 
#WHERE Item_Fat_Content is Low Fat.

select count(item_Fat_Content) as low_fat  from blinkit 
where Item_Fat_Content="low fat"; 


#8.Write an SQL query to show count of Item_Fat_Content 
#WHERE Item_Fat_Content is Regular.
select count(item_Fat_Content) as Regular from blinkit 
where Item_Fat_Content="Regular"; 

#9.Write an SQL query to show maximum Item_MRP
select max(item_mrp) from blinkit;

#10.Write an SQL query to show minimum Item_MRP
select min(item_mrp) from blinkit;


#11.Write an SQL query to show Item_Identifier , Item_Fat_Content 
#,Item_Type, Item_MRP whose Item_MRP is greater than 200.

select Item_Identifier,Item_Fat_Content,Item_Type,Item_MRP from blinkit
where item_mrp>200;

#12.Write an SQL query to show maximum Item_MRP WHERE Item_Fat_Content is Low Fat 

select MAX(item_mrp) from blinkit
where item_fat_content ="low fat";


#13.Write an SQL query to show minimum Item_MRP whose Item_Fat_Content is Low Fat 

select Min(item_mrp) from blinkit
where item_fat_content ="low fat";

#14.Write an SQL query to show ALL DATA WHERE item MRP is BETWEEN 50 to 100

select * from blinkit
where item_mrp between 50 and 100;

#15.Write an SQL query to show ALL UNIQUE value of Item_Fat_Content

select distinct item_fat_content from blinkit;

#16.Write an SQL query to show ALL UNIQUE value of  Item_Type 

select distinct item_type from blinkit;

#17.Write an SQL query to show ALL DATA in descending ORDER by Item MRP 
select * from blinkit 
order by item_mrp desc;

#18.Write an SQL query to show ALL DATA in ascending ORDER by Item_Outlet_Sales
select * from blinkit 
order by Item_Outlet_Sales asc;

#19.Write an SQL query to show ALL DATA in ascending by Item_Type 
select * from blinkit 
order by item_type asc;

#20.Write an SQL query to show DATA of item_type dairy & Meat
SELECT * FROM blinkit
WHERE item_type IN ('Dairy', 'Meat');

#21.Write an SQL query to show ALL UNIQUE value of Outlet_Size
select distinct outlet_size from blinkit;

#22.Write an SQL query to show ALL UNIQUE value of Outlet_Location_Type
select distinct Outlet_Location_Type from blinkit;

#23.Write an SQL query to show ALL UNIQUE value of Outlet_Type 

select distinct Outlet_Type from blinkit;

#24.Write an SQL query to show count of number of items by Item_Type and 
#order it in descending order

SELECT item_type, COUNT(*) AS item_count
FROM blinkit
GROUP BY item_type
ORDER BY item_count DESC;


#25.Write an SQL query to show count of number of items by Outlet_Size 
#and ordered it in ascending order

select outlet_size,count(*) as outlet_count
from blinkit
group by outlet_size
order by outlet_count asc;

#26.Write an SQL query to show count of number of items by Outlet_Type  
#and ordered it in descending order.

select outlet_type,count(*) as outlet_count from blinkit 
group by outlet_type
order by outlet_count desc;

#27.Write an SQL query to show count of items by Outlet_Location_Type and 
#order it in descending order

select outlet_location_type, count(*)  as outlet_location_count from blinkit
group by  outlet_location_type
order by outlet_location_count desc;

#28.Write an SQL query to show maximum MRP by Item_Type
select item_type,max(item_mrp) as max_mrp from blinkit
group by item_type;

#29.Write an SQL query to show minimum MRP by Item_Type 
select item_type ,min(item_mrp) as min_mrp from blinkit
group by item_type;

#30.Write an SQL query to show minimum MRP by Outlet_Establishment_Year and 
#order it in descending order

select Outlet_Establishment_Year,min(item_mrp) as min_mrp from blinkit
group by Outlet_Establishment_Year
order by min_mrp desc;


#31.Write an SQL query to show maximum MRP by Outlet_Establishment_Year 
#and order it in descending order.

select Outlet_Establishment_Year,max(item_mrp) as max_mrp from blinkit
group by Outlet_Establishment_Year
order by max_mrp desc;

#32.Write an SQL query to show average MRP by Outlet_Size and order it in descending order.

select outlet_size , avg(item_mrp) as avg_mrp from blinkit 
group by outlet_size 
order by avg_mrp desc;


#33.Write an SQL query to Average MRP by Outlet_Type and ordered in ascending order.

select outlet_type , avg(item_mrp) as avg_mrp from blinkit 
group by outlet_type 
order by avg_mrp asc;


#34.Write an SQL query to show maximum MRP by Outlet_Type
select outlet_type ,max(item_mrp) as max_mrp from blinkit
group by outlet_type;

#35.	Write an SQL query to show maximum Item_Weight by Item_Type
select item_type , max(item_weight) as max_weight from blinkit
group by item_type;


#36.	Write an SQL query to show maximum Item_Weight by Outlet_Establishment_Year 
select  Outlet_Establishment_Year , max(Item_Weight) as max_weight from blinkit
group by  Outlet_Establishment_Year;


#37.	Write an SQL query to show minimum Item_Weight by Outlet_Type 
select outlet_type , min(item_weight) as min_weight from blinkit
group by outlet_type;

#38.Write an SQL query to show average Item_Weight by Outlet_Location_Type 
#and arrange it by descending order

select Outlet_Location_Type , avg(item_weight) as avg_weight from blinkit
group by Outlet_Location_Type 
order by avg_weight desc;

#39.Write an SQL query to show maximum Item_Outlet_Sales by Item_Type

select item_type , max(Item_Outlet_Sales )  from blinkit
group by item_type;

#40.Write an SQL query to show minimum Item_Outlet_Sales by Item_Type 

select item_type , min(Item_Outlet_Sales )  from blinkit
group by item_type;


#41.Write an SQL query to show minimum Item_Outlet_Sales by Outlet_Establishment_Year 
select  Outlet_Establishment_Year , min(Item_Outlet_Sales) from blinkit 
group by  Outlet_Establishment_Year;


#42.Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Establishment_Year
#and order it by descending order

select Outlet_Establishment_Year, max(Item_Outlet_Sales) as max_outlet_sales from blinkit
group by Outlet_Establishment_Year
order by max_outlet_sales desc;


#43.Write an SQL query to show average Item_Outlet_Sales by Outlet_Size 
#and order it it descending order

select outlet_size,avg(item_outlet_sales) as avg_item_outlet_sales from blinkit
group by  outlet_size
order by avg_item_outlet_sales desc;


#44.Write an SQL query to show average Item_Outlet_Sales by Outlet_Type

select outlet_type ,avg(item_outlet_sales) from blinkit
group by outlet_type;


#45.Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Type

select outlet_type ,max(item_outlet_sales) from blinkit
group by outlet_type;



#46.	Write an SQL query to show total Item_Outlet_Sales by Item_Type 

select item_type,sum(Item_Outlet_Sales) from blinkit
group by item_type;


#47.Write an SQL query to show total Item_Outlet_Sales by Item_Fat_Content 

select item_fat_content ,sum(item_outlet_sales) from blinkit
group by item_fat_content;

#48.Write an SQL query to show maximum Item_Visibility by Item_Type

select item_type, max(item_visibility) from blinkit
group by item_type;


#49.	Write an SQL query to show Minimum Item_Visibility by Item_Type 

select item_type, min(item_visibility) from blinkit
group by item_type;

#50.Write an SQL query to show total Item_Outlet_Sales by Item_Type but only 
#WHERE Outlet_Location_Type is Tier 1 

select outlet_location_type,item_type,sum(item_outlet_sales) from blinkit
where outlet_location_type="tier 1"
group by item_type,outlet_location_type;


#51.Write an SQL query to show total Item_Outlet_Sales by Item_Type 
#WHERE Item_Fat_Content is ONLY Low Fat & LF

SELECT item_fat_content, item_type, SUM(item_outlet_sales) AS total_sales
FROM blinkit
WHERE item_fat_content IN ('Low Fat', 'LF')
GROUP BY item_fat_content, item_type;


