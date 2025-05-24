CREATE TABLE cars (
    car_id SERIAL PRIMARY KEY,
    brand VARCHAR(50) ,
    model VARCHAR(100) ,
    year INT,
    fuel_type VARCHAR(20),          -- Petrol, Diesel, Electric, Hybrid
    transmission VARCHAR(20),       -- Manual, Automatic
    body_type VARCHAR(30),          -- SUV, Sedan, Hatchback, etc.
    engine_cc INT,                  -- Engine capacity in cc
    horsepower INT,
    mileage_kmpl NUMERIC(5,2),      -- Kilometers per liter
    seating_capacity INT,
    price_usd NUMERIC(12,2),        -- Price in USD
    country_of_origin VARCHAR(50),
    color_options TEXT,             -- Comma-separated: "Red,Blue,White"
    is_available BOOLEAN DEFAULT true,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

drop table if exists cars; 
