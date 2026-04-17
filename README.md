# Movie Management App

A Java-based console application developed as part of the **SAP Mentorship Program**. It lets users register, log in, browse a movie catalog, and leave ratings and reviews.

---

## Features

- **User accounts** — register and log in with BCrypt-hashed passwords
- **Movie catalog** — add movies and browse them with paginated navigation
- **Ratings & reviews** — rate movies on a 0–10 scale and write text reviews


---

## Tech Stack

| Layer | Technology |
|---|---|
| Language | Java 19 |
| Build | Maven |
| JSON | GSON 2.13.1 |
| Password security | jBCrypt 0.4 |
| Database | PostgreSQL |
| ORM | Hibernate 6 / Jakarta Persistence |
| Migration scripts | Python 3, psycopg2, python-dotenv |

---

## Prerequisites

- Java 19+
- Maven 3.6+
- PostgreSQL (optional — required only for DB migration)
- Python 3.8+ with pip (optional — required only for DB migration)

---

## Setup & Run

### 1. Clone the repository

```bash
git clone <repo-url>
cd Movies_beginner
```

### 2. Build the project

```bash
mvn clean compile
```

### 3. Run the application

```bash
java -cp "target/classes:gson-2.10.1.jar:jbcrypt-0.4.jar" Main
```

> On Windows, replace `:` with `;` in the classpath:
> ```cmd
> java -cp "target/classes;gson-2.10.1.jar;jbcrypt-0.4.jar" Main
> ```

The app loads movie and user data from `movies.json` and `users.json` at startup and saves any changes back to those files on exit.

---

## Database Migration (Optional)

To migrate data into PostgreSQL, follow these steps.

### 1. Create the database

Connect to PostgreSQL and run the schema file:

```bash
psql -U postgres -c "CREATE DATABASE movies_project;"
psql -U postgres -d movies_project -f movies_project1.sql
```

### 2. Configure environment variables

Copy the example file and fill in your credentials:

```bash
cp env.example .env
```

Edit `.env`:

```
DB_NAME=movies_project
DB_USER=postgres
DB_PASS=your_password
DB_HOST=localhost
DB_PORT=5432
```

### 3. Install Python dependencies

```bash
pip install -r requirements.txt
```

### 4. Run the migration script

```bash
python migration.py
```

This imports users from `users.json` and movies/reviews from `movies.json` into the PostgreSQL database.

---

## Project Structure

```
Movies_beginner/
├── src/
│   └── main/
│       ├── java/
│       │   ├── Main.java           # Entry point — menus, business logic
│       │   ├── Movie.java          # Movie JPA entity
│       │   ├── Users.java          # User JPA entity
│       │   └── Reviews.java        # Review JPA entity
│       └── resources/
│           └── hibernate.cfg.xml   # Hibernate / DB connection config
├── movies.json                     # Sample movie data (54 movies)
├── users.json                      # Sample user data
├── movies_project1.sql             # Full DB schema dump
├── migration.sql                   # Schema creation script (IF NOT EXISTS)
├── migrate.sql                     # Schema migration (column changes)
├── migration.py                    # JSON → PostgreSQL migration script
├── migrate-data.py                 # Legacy migration helper
├── requirements.txt                # Python dependencies
├── env.example                     # Environment variable template
├── pom.xml                         # Maven project config
└── README.md
```

---

## How It Works

```
Start
  └── Load movies.json + users.json
        └── Main Menu
              ├── [1] Register   → enter name, phone, email, password (hashed with BCrypt)
              ├── [2] Login      → verify credentials → Movie Menu
              │                         ├── [1] Add a movie
              │                         ├── [2] Rate / review a movie
              │                         ├── [3] Browse all movies (paginated)
              │                         └── [4] Back to main menu
              └── [3] Exit       → save data to JSON files
```

---

## Sample Data

The repo ships with pre-loaded sample data:

- **54 movies** including classics (*The Shawshank Redemption*, *The Godfather*), sci-fi (*Interstellar*, *The Matrix*), and more
- **2 sample users** with BCrypt-hashed passwords ready to log in

---

## Security Notes

- Passwords are hashed using **BCrypt** (cost factor 10) — never stored in plain text
- Database credentials for the Java app are configured in `src/main/resources/hibernate.cfg.xml` — do **not** commit real credentials; use environment variables or a secrets manager in production
- The `.env` file (used by Python scripts) is excluded from git via `.gitignore`
