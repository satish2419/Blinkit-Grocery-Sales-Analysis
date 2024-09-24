create database Project;

show databases;

use Project;

show tables;

#1. Write an SQL query to show all Item_Identifier
select * from blinkit;

#2. Write an SQL query to show count of total Item_Identifier
select count(Item_Identifier) from blinkit;

#3. Write an SQL query to show maximum Item Weight.
select max(Item_Weight) from blinkit;

#4. Write an SQL query to show maximum Item_MRP
select max(Item_MRP) as High_Price from blinkit;

#5. Write an SQL query to show minimum Item Weight.
select min(Item_Weight) from blinkit;

#6.  Write an SQL query to show minimum Item_MRP
select min(Item_MRP) as Low_Price from blinkit;

#7. Write an SQL query to show average Item_Weight
select avg(Item_Weight) from blinkit;

#8. Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Low Fat.
select count(Item_Fat_Content) from blinkit where Item_Fat_Content ="Low Fat";

#9. Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Regular.
select count(Item_Fat_Content) from blinkit where Item_Fat_Content ="Regular";

#10. Write an SQL query to show Item_Identifier , Item_Fat_Content ,Item_Type, Item_MRP whose Item_MRP is greater than 200
select Item_Identifier, Item_Fat_Content, Item_Type, Item_MRP from blinkit 
where Item_MRP>200;

#11. Write an SQL query to show maximum Item_MRP WHERE Item_Fat_Content is Low Fat
select max(Item_MRP) from blinkit where Item_Fat_Content = "Low Fat";

#12. Write an SQL query to show minimum Item_MRP whose Item_Fat_Content is Low Fat
select min(Item_MRP) from blinkit where Item_Fat_Content = "Low Fat";

#13. Write an SQL query to show ALL DATA WHERE item MRP is BETWEEN 50 to 100
select * from blinkit where Item_MRP between 50 and 100;

#14. Write an SQL query to show ALL UNIQUE value of Item_Fat_Content
select distinct(Item_Fat_Content) from blinkit;

#15. Write an SQL query to show ALL UNIQUE value of Item_Type
select distinct(Item_Type) from blinkit;

#16. Write an SQL query to show ALL DATA in descending ORDER by Item MRP
select * from blinkit order by Item_MRP desc;

#17. Write an SQL query to show ALL DATA in ascending ORDER by Item_Outlet_Sales
select * from blinkit order by Item_Outlet_Sales asc;

#18. Write an SQL query to show ALL DATA in ascending by Item_Type
select * from blinkit order by Item_Type asc;

#19. Write an SQL query to show DATA of item_type dairy & Meat
select * from blinkit  where Item_Type = "dairy" and Item_Type = "Meat";

#20. Write an SQL query to show ALL UNIQUE value of Outlet_Size
select distinct (trim(Outlet_Size)) from blinkit;

#21. Write an SQL query to show ALL UNIQUE value of Outlet_Location_Type
select distinct (Outlet_Location_Type) from blinkit;

#22. Write an SQL query to show ALL UNIQUE value of Outlet_Type
select distinct (Outlet_Type) from blinkit;

/*23. Write an SQL query to show count of number of items by Item_Type 
 * and order it in descending order*/
select Item_type, count(*) as item_Count from blinkit
group by Item_type order by item_Count desc;

/*24. Write an SQL query to show count of number of items by Outlet_Size 
 * and ordered it in ascending order*/
select Outlet_Size, count(*) as Outlet_Count from blinkit
group by Outlet_Size order by Outlet_Count asc;

/*25. Write an SQL query to show count of number of items by Outlet_Type 
 * and ordered it in descending order*/
select Outlet_Type, count(*) as Count_Outlet_Type from blinkit
group by Outlet_Type order by Count_Outlet_Type desc;

/*26. Write an SQL query to show count of items by Outlet_Location_Type 
 * and order it indescending order*/
select Outlet_Location_Type, count(*) as Num_Outlet_Location_Type from blinkit
group by Outlet_Location_Type order by Num_Outlet_Location_Type;

#27. Write an SQL query to show maximum MRP by Item_Type
select Item_Type, max(Item_MRP) as Price from blinkit
group by Item_Type;

#28. Write an SQL query to show minimum MRP by Item_Type
select Item_Type, min(Item_MRP) as Price from blinkit
group by Item_Type;

/*29. Write an SQL query to show minimum MRP by Outlet_Establishment_Year 
 * and order it in descending order.*/
select Outlet_Establishment_Year, min(Item_MRP) as Min_Price from blinkit
group by Outlet_Establishment_Year order by Min_Price desc;

/*30. Write an SQL query to show 
 * average MRP by Outlet_Size and order it in descending order.*/
select Outlet_size, avg(Item_MRP) as Avg_Price from blinkit
group by Outlet_size order by Avg_Price desc;

#31. Write an SQL query to show maximum MRP by Outlet_Type
select Outlet_Type, max(Item_MRP) as Price from blinkit
group by Outlet_Type;

#32. Write an SQL query to show maximum Item_Weight by Item_Type
select  Item_Type, max(Item_Weight) as Max_Weight from blinkit
group by Item_Type;

#33. Write an SQL query to show maximum Item_Weight by Outlet_Establishment_Year
select  Outlet_Establishment_Year, max(Item_Weight) as Max_Weight from blinkit
group by  Outlet_Establishment_Year;

#34. Write an SQL query to show minimum Item_Weight by Outlet_Type
select Outlet_type, min(Item_Weight) as Min_Weight from blinkit
group by Outlet_type;

/*35. Write an SQL query to show average Item_Weight by 
 * Outlet_Location_Type and arrange it by descending order*/
select  Outlet_Location_Type, avg(Item_Weight) as Avg_Weight from blinkit
group by Outlet_Location_Type order by Avg_Weight desc;

#36. Write an SQL query to show maximum Item_Outlet_Sales by Item_Type
select Item_type, max(Item_Outlet_Sales) Max_Sales from blinkit
group by Item_type;

#37. Write an SQL query to show minimum Item_Outlet_Sales by Item_Type
select Item_type, min(Item_Outlet_Sales) Min_Sales from blinkit
group by Item_type;

#38. Write an SQL query to show minimum Item_Outlet_Sales by Outlet_Establishment_Year
select Outlet_Establishment_Year, min(Item_Outlet_Sales) as Min_Outlet_Sales from blinkit
group by Outlet_Establishment_Year;

/*39. Write an SQL query to show maximum Item_Outlet_Sales by 
 * Outlet_Establishment_Year and order it by descending order*/
select Outlet_Establishment_Year, max(Item_Outlet_Sales) as Max_Outlet_Sales from blinkit
group by Outlet_Establishment_Year order by Max_Outlet_Sales desc;

/*40. Write an SQL query to show average Item_Outlet_Sales by
 *  Outlet_Size and order it it descending order*/
select  Outlet_Size, avg(Item_Outlet_Sales) as Avg_Outlet_Sales from blinkit
group by Outlet_Size order by Avg_Outlet_Sales desc;

#41. Write an SQL query to show average Item_Outlet_Sales by Outlet_Type
select Outlet_type, avg(Item_Outlet_Sales) as Avg_Outlet_Sales from blinkit
group by Outlet_type;

#42. Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Type
select Outlet_type, Max(Item_Outlet_Sales) as Max_Outlet_Sales from blinkit
group by Outlet_type;

#43. Write an SQL query to show total Item_Outlet_Sales by Item_Type
select Item_type, sum(Item_Outlet_Sales) as Total_Outlet_Sales from blinkit
group by Item_type;

#44. Write an SQL query to show total Item_Outlet_Sales by Item_Fat_Content
select Item_Fat_Content, sum(Item_Outlet_Sales) as Total_Sales from blinkit
group by Item_Fat_Content;

#45. Write an SQL query to show maximum Item_Visibility by Item_Type
select Item_Type, Max(Item_Visibility) as Max_Visibility from blinkit
group by Item_type;

#46. Write an SQL query to show Minimum Item_Visibility by Item_Type
select Item_Type, Min(Item_Visibility) as Min_Visibility from blinkit
group by Item_type;

/*47. Write an SQL query to show total Item_Outlet_Sales by 
 * Item_Type but only WHERE Outlet_Location_Type is Tier 1*/
select Item_Type, sum(Item_Outlet_Sales) as Total_Sales from blinkit
where Outlet_Location_Type = "Tier 1" group by Item_Type;

/*48. Write an SQL query to show total Item_Outlet_Sales by Item_Type
 * WHERE Item_Fat_Content is ONLY Low Fat & LF*/
select Item_Type, sum(Item_Outlet_Sales) as Total_Sales from blinkit
where (Item_Fat_Content = "Low Fat") or (Item_Fat_Content = "LF")
group by Item_Type;










