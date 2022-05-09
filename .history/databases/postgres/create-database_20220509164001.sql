CREATE TABLE IF NOT EXISTS customer
(
    id BIGSERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    address TEXT NOT NULL,
    create_at TIMESTAMP WITH TIME ZONE
);

