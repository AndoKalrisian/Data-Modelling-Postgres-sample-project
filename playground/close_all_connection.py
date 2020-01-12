

import psycopg2

def conn_db():
    # connect to default database
    conn = psycopg2.connect("host=127.0.0.1 dbname=sparkifydb user=postgres password=postgres")
    conn.set_session(autocommit=True)
    cur = conn.cursor()

    return cur, conn

cur, conn = conn_db()

cur.execute("""
SELECT pg_terminate_backend(pg_stat_activity.pid)
FROM pg_stat_activity
WHERE pg_stat_activity.datname = 'sparkifydb' -- ← change this to your DB
  AND pid <> pg_backend_pid()
  """)
conn.close()
