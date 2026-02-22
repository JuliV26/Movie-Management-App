import json
import psycopg2 

DB_NAME = 'movies_project'
DB_USER = 'postgres'
DB_PASS = 'password123'
DB_HOST = 'localhost'
DB_PORT = 5432
   
INSERT_USER_SQL = """
INSERT INTO users (name, phone_number, email, password)
VALUES (%s, %s, %s, %s)
ON CONFLICT (email) DO NOTHING;
"""

INSERT_MOVIE_SQL = """
INSERT INTO movies (title, genre, year)
VALUES (%s, %s, %s)
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
            (user["name"],user["phone_number"], user["email"], user["password"])
        )
    connection.commit()
    cursor.close()
    connection.close()


def migrate_movies():
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
            INSERT_MOVIE_SQL,
            (movie["title"], movie["genre"], movie["year"])
          )
   
       

    connection.commit()
    cursor.close()
    connection.close()

    print("Movies and users migrated successfully!")

if __name__ == "__main__":
    migrate_users()
    migrate_movies()
