DROP TABLE IF EXISTS players   CASCADE;
DROP TABLE IF EXISTS teams CASCADE;

create table teams (
 id SERIAL PRIMARY KEY,
 team_name TEXT NOT NULL,
 sport TEXT NOT NULL,
 logo_url TEXT
);

CREATE TABLE players (
 id SERIAL PRIMARY KEY,
 name TEXT NOT NULL,
 age INT,
 position TEXT,
 pic_url TEXT,
 team_id INTEGER REFERENCES teams(id) ON DELETE CASCADE NOT NULL
);