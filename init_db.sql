PRAGMA foreign_keys = ON;

CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT UNIQUE,
    password TEXT,
    role INTEGER
);

CREATE TABLE location_categories (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    category TEXT
);

CREATE TABLE material_categories (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    category TEXT
);

CREATE TABLE drop_categories (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    category TEXT
);

CREATE TABLE rides (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT UNIQUE,
    description TEXT,
    location_id INTEGER,
    material_id INTEGER,
    drop_id INTEGER,
    FOREIGN KEY (location_id) REFERENCES location_categories(id),
    FOREIGN KEY (material_id) REFERENCES material_categories(id),
    FOREIGN KEY (drop_id) REFERENCES drop_categories(id)
);

CREATE TABLE reviews (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    content TEXT,
    stars INTEGER,
    sent_at TIMESTAMP,
    user_id INTEGER,
    ride_id INTEGER,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (ride_id) REFERENCES rides(id) ON DELETE CASCADE
);

INSERT INTO location_categories (category) 
VALUES ('Europe'), ('Asia'), ('Oceania'), ('Africa'), ('North America'), ('South America');

INSERT INTO material_categories (category) 
VALUES ('Steel'), ('Wooden'), ('Hybrid');

INSERT INTO drop_categories (category) 
VALUES ('Strata'), ('Giga'), ('Hyper'), ('Mega'), ('Intermediate'), ('Family');
