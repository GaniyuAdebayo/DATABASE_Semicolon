CREATE TABLE Customers(
	id SERIAL PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Address VARCHAR(150)
);

CREATE TABLE PRODUCTS(
	product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(150),
    price_per_unit DECIMAL(12, 2),
    product_description TEXT
);