-- Competitor and Competitor Rankings Schema
CREATE TABLE IF NOT EXISTS competitors (
    competitor_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL,
    country_code CHAR(3) NOT NULL,
    abbreviation VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS competitor_rankings (
    rank_id INT PRIMARY KEY AUTOINCREMENT,
    rank INT NOT NULL,
    movement INT NOT NULL,
    points INT NOT NULL,
    competitions_played INT NOT NULL,
    competitor_id VARCHAR(50) NOT NULL,
    FOREIGN KEY (competitor_id) REFERENCES competitors(competitor_id)
);
