# TODO: Add in FOREIGN KEY constraints into the db

CREATE TABLE IF NOT EXISTS songplays (
    songplay_id int PRIMARY KEY, 
    start_time timestamp,
    user_id int NOT NULL,
    level text,
    song_id text NOT NULL,
    artist_id text NOT NULL,
    session_id int NOT NULL,
    location text,
    user_agent text
);

INSERT INTO songplays (songplay_id, 
    start_time,
    user_id,
    level,
    songplay_id,
    artist_id,
    session_id,
    location,
    user_agent) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)


DROP TABLE songplays

CREATE TABLE IF NOT EXISTS users (
    user_id int PRIMARY KEY,
    first_name text,
    last_name text,
    gender text,
    level text
)

INSERT INTO users (
    user_id,
    first_name,
    last_name,
    gender,
    level
) VALUES (%s, %s, %s, %s, %s)

CREATE TABLE IF NOT EXISTS songs (
    song_id int PRIMARY KEY,
    title text,
    artist_id text NOT NULL,
    year int,
    duration float
)

INSERT INTO songs (
    song_id,
    title,
    artist_id,
    year,
    duration
) VALUES (%s, %s, %s, %s, %s)

CREATE TABLE IF NOT EXISTS artists (
    artist_id text PRIMARY KEY,
    name text,
    location text,
    latitude float,
    longitude float
)

INSERT INTO artists (
    artist_id,
    name,
    location,
    latitude,
    longitude
) VALUES (%s, %s, %s, %s, %s)

CREATE TABLE IF NOT EXISTS time (
    start_time timestamp PRIMARY KEY,
    hour int,
    day int,
    week int,
    month int,
    year int,
    weekday int
)

INSERT INTO time (
    start_time,
    hour,
    day,
    week,
    month,
    year,
    weekday
) VALUES (%s, %s, %s, %s, %s)

DROP table songplays
DROP table users
DROP table songs
DROP table artists
DROP table time

