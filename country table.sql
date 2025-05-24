CREATE TABLE countries (
    country_id SERIAL PRIMARY KEY,
    country_name VARCHAR(100) NOT NULL,
    continent VARCHAR(50),
    population BIGINT,
    gdp_usd BIGINT,
    gdp_growth_percent NUMERIC(5,2),
    area_sq_km BIGINT,
    capital_city VARCHAR(100),
    official_language VARCHAR(100),
    currency VARCHAR(50),
    timezone VARCHAR(50),
    population_density NUMERIC(15,2),
    literacy_rate NUMERIC(5,2),
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);
SELECT * FROM countries;

