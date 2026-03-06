import json
from multiprocessing import connection
import psycopg2 
import os
from dotenv import load_dotenv

load_dotenv()

DB_NAME = os.getenv("DB_NAME")
DB_USER = os.getenv("DB_USER")
DB_PASS = os.getenv("DB_PASS")
DB_HOST = os.getenv("DB_HOST")
DB_PORT = int(os.getenv("DB_PORT", 5432))

INSERT_USER_SQL = """
INSERT INTO users (name, number, email, password)
VALUES (%s, %s, %s, %s)
ON CONFLICT (email) DO NOTHING;
"""

INSERT_MOVIE_SQL = """
INSERT INTO movies (title, genre, year)
VALUES (%s, %s, %s)
"""

INSERT_REVIEW_SQL = """
INSERT INTO reviews (user_id, movie_id, rating, review)
VALUES (%s, %s, %s, %s)
"""

def migrate_users():
    connection = psycopg2.connect(
        database=DB_NAME,
        user=DB_USER,
        password=DB_PASS,
        host=DB_HOST,
        port=DB_PORT
    )

    cursor = connection.cursor()
    with open("users.json", "r", encoding="utf-8") as f:
        users = json.load(f)
    for user in users:
          cursor.execute(
            INSERT_USER_SQL,
            (user["name"],user["number"], user["email"], user["password"])
        )
    connection.commit()
    cursor.close()
    connection.close()

def migrate_movies_reviews():
    connection = psycopg2.connect(
        database=DB_NAME,
        user=DB_USER,
        password=DB_PASS,
        host=DB_HOST,
        port=DB_PORT
    )

    cursor = connection.cursor()
    with open("movies.json", "r", encoding="utf-8") as f:
        movies = json.load(f)
        for movie in movies:
            cursor.execute(
                """
                INSERT INTO movies (title, genre, year)
                VALUES (%s, %s, %s)
                RETURNING id;
                """,
                (movie["title"], movie["genre"], movie["year"])
            )

            movie_id = cursor.fetchone()[0]

            for review in movie["reviews"]:
                cursor.execute(
                    """
                    INSERT INTO reviews (movie_id, rating, review)
                    VALUES (%s, %s, %s);
                    """,
                    (movie_id, review["rating"], review["review"])
                )

    connection.commit()
    cursor.close()
    connection.close()



    

if __name__ == "__main__":
    migrate_users()
    migrate_movies_reviews()
    print("Movies, users and reviews migrated successfully!")

#psql -U postgres -d movies_project