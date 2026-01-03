CREATE TABLE IF NOT EXISTS categories (
    category_id TEXT PRIMARY KEY,
    category_name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS competitions (
    competition_id TEXT PRIMARY KEY,
    competition_name TEXT NOT NULL,
    parent_id TEXT,
    type TEXT,
    gender TEXT,
    category_id TEXT,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);
