create database task3;
use task3

select * from walmart_sales
## select col temp from table
select Temperature from walmart_sales
## use where condition : i want temp  where fuel is 2.572
select Temperature from walmart_sales where Fuel_Price = 2.572
## ordered by col name desc for sorting : ordered by dates
select Temperature,Fuel_price from  walmart_sales order by Date desc
## group by and use sum()
select Date, sum(fuel_price) as total_fuel_price from walmart_sales group by date
CREATE TABLE store_infos (
    Store INT ,
    Manager_Name VARCHAR(50),
    Region VARCHAR(50),
    Fuel_Price int
    );
    INSERT INTO store_infos (Store, Manager_Name, Region,Fuel_price) VALUES
(1, 'Amit Kumar', 'North',2.572),
(2, 'Sneha Reddy', 'South',2.548),
(3, 'Ravi Mehta', 'East',2.514),
(4, 'Priya Nair', 'West',2.625),
(5, 'John Dsouza', 'Central',2.02),
(6, 'Neha Sharma', 'North',9.08),
(10, 'Deepak Roy', 'East',5.3);
select * from store_infos
select w.Temperature,w.cpi from walmart_Sales as w


left join store_infos as s on s.Fuel_price=w.fuel_price 
## use limit 
-- Top 5 highest rated sales 
SELECT  Weekly_sales , store ,date 
FROM walmart_sales
ORDER BY date DESC
LIMIT 5;

-- Extract month 
SELECT 
    MONTH(STR_TO_DATE(Date, '%d-%m-%Y')) AS Sale_Month,
    COUNT(*) AS Transactions
FROM walmart_sales
GROUP BY MONTH(STR_TO_DATE(Date, '%d-%m-%Y'));


-- Days between two sample dates 
SELECT DATEDIFF('2025-06-01', '2025-05-01') AS Days_Difference;
