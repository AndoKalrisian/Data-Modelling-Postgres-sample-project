import psycopg2

def conn_db():
    # connect to default database
    conn = psycopg2.connect("host=127.0.0.1 dbname=testdb user=postgres password=postgres")
    conn.set_session(autocommit=True)
    cur = conn.cursor()

    return cur, conn

cur, conn = conn_db()

cur.execute("""
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
)""")
conn.close()
