CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    description TEXT,
    category VARCHAR(50),
    brand VARCHAR(50),
    price NUMERIC(10, 2) NOT NULL,
    discount NUMERIC(5, 2) DEFAULT 0.00,
    stock_quantity INTEGER DEFAULT 0,
    sku VARCHAR(50) UNIQUE,
    barcode VARCHAR(50) UNIQUE,
    weight_kg NUMERIC(6, 2),
    dimensions_cm VARCHAR(50),
    color VARCHAR(30),
    material VARCHAR(50),
    origin_country VARCHAR(100),
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
select * from products ;
drop table if exists priducts ; 


