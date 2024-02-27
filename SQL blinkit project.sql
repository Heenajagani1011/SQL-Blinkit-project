create database blinkit;
show databases;
use blinkit;

show tables;
select * from blinkit;

#1. Write an SQL query to show all Item_Identifier 
select item_identifier from blinkit;


#2. Write an SQL query to show count of total Item_Identifier.
select count(item_identifier) from blinkit;

#3. Write an SQL query to show maximum Item Weight. 
select max(item_weight) from blinkit;

#4. Write an SQL query to show minimum Item Weight.
select min(item_weight) from blinkit; 

#5. Write an SQL query to show average Item_Weight. 
select avg(item_weight) from blinkit;

select * from blinkit;

#7. Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Low Fat
select count(item_fat_content) from blinkit where item_fat_content = 'low fat';

#8. Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Regular. 
select count(item_fat_content) from blinkit where item_fat_content = 'regular';

#9. Write an SQL query to show maximum Item_MRP 
select max(item_mrp) from blinkit;

#10. Write an SQL query to show minimum Item_MRP 
select min(item_mrp) from blinkit;

#11. Write an SQL query to show Item_Identifier , Item_Fat_Content ,Item_Type, Item_MRP whose Item_MRP 
#is greater than 200. 
select item_identifier, item_fat_content, item_type, item_mrp from blinkit where item_mrp > 200;

#12. Write an SQL query to show maximum Item_MRP WHERE Item_Fat_Content is Low Fat 
select max(item_mrp) from blinkit where item_fat_content = 'low fat';

#13. Write an SQL query to show minimum Item_MRP whose Item_Fat_Content is Low Fat 
select min(item_mrp) from blinkit where item_fat_content = 'low fat';

#14. Write an SQL query to show ALL DATA WHERE item MRP is BETWEEN 50 to 100 
select * from blinkit where item_mrp between 50 and 100;

#15. Write an SQL query to show ALL UNIQUE value of Item_Fat_Content
select distinct item_fat_content from blinkit;

#16. Write an SQL query to show ALL UNIQUE value of Item_Type
select distinct item_type from blinkit;

#17. Write an SQL query to show ALL DATA in descending ORDER by Item MRP 
select * from blinkit  order by item_mrp desc;

#18. Write an SQL query to show ALL DATA in ascending ORDER by Item_Outlet_Sales
select * from blinkit order by item_outlet_sales asc;

#19. Write an SQL query to show ALL DATA in ascending by Item_Type 
select * from blinkit order by item_type asc;

#20. Write an SQL query to show DATA of item_type dairy & Meat 
select * from  blinkit where item_type in ("dairy" & "Meat");

#21. Write an SQL query to show ALL UNIQUE value of Outlet_Size 
select distinct outlet_size from blinkit;

#22. Write an SQL query to show ALL UNIQUE value of Outlet_Location_Type 
select distinct outlet_location_type from blinkit;

#23. Write an SQL query to show ALL UNIQUE value of Outlet_Type 
select distinct outlet_type from blinkit;

#24. Write an SQL query to show count of number of items by Item_Type and order it in descending order 

select Item_Identifier from blinkit;
select item_type from blinkit;

SELECT Item_Type , count(Item_Identifier)No_Of_Item  
FROM blinkit 
GROUP BY Item_Type  
ORDER BY No_Of_Item DESC;

#25. Write an SQL query to show count of number of items by Outlet_Size and ordered it in ascending order 
select count(outlet_size) from blinkit order by outlet_size asc;

SELECT Outlet_Size , count(Item_Identifier) No_Of_Item  
FROM blinkit 
GROUP BY Outlet_Size  
ORDER BY No_Of_Item asc; 


#26. Write an SQL query to show count of number of items by Outlet_Type and ordered it in descending order.>---

select outlet_type , count(item_identifier) no_of_item
from blinkit 
group by outlet_type 
order by no_of_item desc;

#27. Write an SQL query to show count of items by Outlet_Location_Type and order it indescending order 

select Outlet_Location_Type, count(item_identifier) no_of_item
from blinkit 
group by Outlet_Location_Type 
order by no_of_item;

#28. Write an SQL query to show maximum MRP by Item_Type >----

select item_type,item_mrp from blinkit where item_mrp = 
(select max(item_mrp)from blinkit);

SELECT  Item_Type, Max(Item_MRP) Max_MRP  
FROM blinkit  
GROUP BY Item_Type; 

#29. Write an SQL query to show minimum MRP by Item_Type 

select item_type,item_mrp from blinkit where item_mrp = 
(select min(item_mrp)from blinkit);

select item_type ,min(item_mrp) from blinkit group by item_type;

#30. Write an SQL query to show minimum MRP by Outlet_Establishment_Year and order it in descending order. >---

select outlet_establishment_year,item_mrp from blinkit where 
outlet_establishment_year = 1985 order by outlet_establishment_year desc;

select min(Outlet_Establishment_Year) from blinkit;


SELECT  Outlet_Establishment_Year, min(Item_MRP) Min_MRP  
FROM blinkit  
GROUP BY Outlet_Establishment_Year order by Min_MRP desc;


#31. Write an SQL query to show maximum MRP by Outlet_Establishment_Year and order it in descending order.>--- 

select outlet_establishment_year,item_mrp from blinkit where 
outlet_establishment_year = 2009 order by outlet_establishment_year desc;


#32. Write an SQL query to show average MRP by Outlet_Size and order it in descending order.>---

select avg(outlet_size) from blinkit;
select outlet_size,item_mrp from blinkit where 
outlet_size =0 order by outlet_size desc;

SELECT  Outlet_Size, avg(Item_MRP) Average_MRP  
FROM blinkit
GROUP BY Outlet_Size order by Average_MRP desc;


#33. Write an SQL query to Average MRP by Outlet_Type and ordered in ascending order. >----

select outlet_type , avg(item_mrp) avg_mrp from blinkit 
group by outlet_size order by avg_mrp asc;

#34. Write an SQL query to show maximum MRP by Outlet_Type

select outlet_type , max(item_mrp) max_mrp from blinkit 
group by outlet_type;


#35. Write an SQL query to show maximum Item_Weight by Item_Type 

select item_type , max(item_weight) max_item_weight from blinkit 
group by item_type;

#36. Write an SQL query to show maximum Item_Weight by Outlet_Establishment_Year >---

select Outlet_Establishment_Year , max(item_weight) max_weight from blinkit 
group by item_weight;


#37. Write an SQL query to show minimum Item_Weight by Outlet_Type

select outlet_type ,max(item_weight) max_item_weight from blinkit 
group by Outlet_Type;


#38. Write an SQL query to show average Item_Weight by Outlet_Location_Type and 
#arrange it by descending order >---

select Outlet_Location_Type , avg(item_weight) avg_item_weight from blinkit 
group by Outlet_Location_Type order by item_weight;


#39. Write an SQL query to show maximum Item_Outlet_Sales by Item_Type >----

select item_type , max(Item_Outlet_Sales) max_outlet_sales from blinkit 
group by item_type;

#40. Write an SQL query to show minimum Item_Outlet_Sales by Item_Type>---

select item_type , min(Item_Outlet_Sales) min_outlet_sales from blinkit 
group by item_type;

#41. Write an SQL query to show minimum Item_Outlet_Sales by Outlet_Establishment_Year 

select Outlet_Establishment_Year , min(Item_Outlet_Sales) from blinkit 
group by Outlet_Establishment_Year;


#42. Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Establishment_Year and 
#order it by descending order>----

select Outlet_Establishment_Year , max(Item_Outlet_Sales) max_outlet_sales from blinkit 
group by Outlet_Establishment_Year order by max_outlet_sales desc;


 #43. Write an SQL query to show average Item_Outlet_Sales by Outlet_Size and order it it descending order >---

select Outlet_Size , avg(Item_Outlet_Sales) avg_outlet_sales from blinkit 
group by Outlet_Size 
order by avg_outlet_sales desc;


#44. Write an SQL query to show average Item_Outlet_Sales by Outlet_Type >----

select outlet_type , avg(Item_Outlet_Sales ) avg_outlet_sales 
from blinkit 
group by Outlet_Type 
order by Item_Outlet_Sales;

#45. Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Type 

select outlet_type , max(Item_Outlet_Sales) max_outlet_sales
from blinkit 
group by outlet_type;


#46. Write an SQL query to show total Item_Outlet_Sales by Item_Type >----

select item_type , sum(Item_Outlet_Sales) total_outlet_sales
from blinkit 
group by item_type;
 
#47. Write an SQL query to show total Item_Outlet_Sales by Item_Fat_Content >----

select Item_Fat_Content , sum(Item_Outlet_Sales) total_outlet_sales
from blinkit 
group by Item_Fat_Content;

#48. Write an SQL query to show maximum Item_Visibility by Item_Type 

select Item_type , max(Item_visibility) max_vis
from blinkit 
group by Item_type;


#49. Write an SQL query to show Minimum Item_Visibility by Item_Type 

select Item_type , min(Item_visibility) min_vis
from blinkit 
group by Item_type;


#50. Write an SQL query to show total Item_Outlet_Sales by Item_Type 
#but only WHERE Outlet_Location_Type is Tier 1 

select Item_Type, sum(Item_Outlet_Sales)Total_sales
from blinkit  where Outlet_Location_Type = 'Tier 1'
group by Item_Type order by Total_sales desc; 

#51. Write an SQL query to show total Item_Outlet_Sales by 
#Item_Type WHERE Item_Fat_Content is ONLY Low Fat & LF 

select Item_Type, sum(Item_Outlet_Sales)Total_sales
from blinkit where Item_Fat_Content in ('Low Fat', 'LF')
group by Item_Type 
order by Total_sales desc; 






