-- find all products

Select * From products;
-- Select * From categories;
-- Select * From 

-- find all products that cost $1400

Select *
From products
Where price = 1400;

-- find all products that cost $11.99 or $13.99

Select * From products
-- WHERE price in(11.00, 13.99);
Where price = 11.99 or price = 13.99;

-- find all products that do NOT cost 11.99 - using NOT

Select * From products
-- Where price != 11.99;
Where Not price = 11.99;

-- find all products and sort them by price from greatest to least

Select * From products 
Order By price Desc; 
-- find all employees who don't have a middle initial

Select * 
From employees
Where MiddleInitial IS null;

-- find distinct product prices

Select Distinct price as "Distinct Price"
From products;

-- find all employees whose first name starts with the letter ‘j’

Select * From employees
Where FirstName like 'j%';

-- find all Macbooks

Select * 
From products
Where name Like '%macbook%';

-- find all products that are on sale

Select * 
From products
-- Where OnSale = true;
Where OnSale = 1;

-- find the average price of all products

Select AVG(price) as "Average Price of All Products"
From products;

-- find all Geek Squad employees who don't have a middle initial

Select * From employees
Where title Like 'geek squad'
AND MiddleInitial IS Null;

-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest. Hint: Use the between keyword

Select * From products
Where StockLevel BETWEEN 500 AND 1200
-- Order By price ASC;
Order By price;