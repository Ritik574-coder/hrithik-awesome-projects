CREATE TABLE customers (
    CustomerID UUID PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(150) UNIQUE,
    Phone VARCHAR(50),
    City VARCHAR(100),
    Country VARCHAR(100),
    Address TEXT,
    DOB DATE,
    CreatedAt TIMESTAMP,
    UpdatedAt TIMESTAMP
);

COPY 
customers(customerID,Name,Email,Phone,City,Country,Address,DOB,CreatedAt,UpdatedAt)
FROM 'C:\Users\hp\Downloads\customers_500_unique.csv'
DELIMITER ','
CSV HEADER;

CREATE TABLE orders (
    OrderID UUID PRIMARY KEY,
    CustomerID VARCHAR(8) DEFAULT UPPER(SUBSTRING(uuid_generate_v4()::TEXT,1,8)),
    OrderDate DATE,
    Amount NUMERIC(10,2),
    Status VARCHAR(20),
    CONSTRAINT fk_customer FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID)
);