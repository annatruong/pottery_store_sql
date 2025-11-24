# Pottery Store SQL Database (Foundation Project)

A SQLite database for a pottery store, designed to demonstrate foundational SQL skills.

This project was completed as part of my SQL training and demonstrates my ability to:

- Design a relational database schema
- Create tables using SQL
- Seed data into the database
- Write SQL queries to answer analytical questions

## Project Structure

```
pottery_store_sql/
├─ db/
│  └─ pottery_store.db          # SQLite database file
├─ sql/
│  ├─ schema.sql       # SQL file to create tables
│  ├─ seed.sql         # SQL file to populate tables with sample data
│  └─ queries.sql      # SQL queries demonstrating analytical skills
└─ README.md           # Project documentation
```

## Getting Started

1. Clone the repository.

2. Open terminal and navigate to the directory of the project folder.

3. Start-up SQLite in your terminal:

```
sqlite3 db/pottery_store.db
```

4. Run the schema.sql file to create the tables:

```
.read sql/schema.sql
```

5. Run the seed.sql file to insert sample data:

```
.read sql/seed.sql
```

6. Run queries.sql to get the results to the analytical questions (section below):

```
.read sql/queries.sql
```

## Analytical Questions

1. List all products where the stock quantity is below 2.
2. Calculate the total value of all products currently in stock split by category.
3. Show the total stock quantity split by category.
4. Which customer has spent the most overall?
5. What is the best-selling product category?
6. What is the total revenue generated?
