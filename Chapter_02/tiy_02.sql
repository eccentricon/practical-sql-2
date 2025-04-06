---------------------------------------------------------------------------
-- Practical SQL: A Beginner's Guide to Storytelling with Data, 2nd Edition
-- by Anthony DeBarros

-- Chapter 2 Try It Yourself exercise
----------------------------------------------------------------------------
-- 1. Imagine you're building a database to catalog all the animals at your
-- local zoo. You want one table to track the kinds of animals in the
-- collection and another table to track the specifics on each animal. Write
-- CREATE TABLE statements for each table that include some of the columns
-- you need. Why did you include the columns you chose?

CREATE DATABASE zoo;

CREATE TABLE animals (
  id bigserial,
  name text, -- animal common name
  type varchar(10), -- mammal, fish, bird, reptile, and amphibian
  scientific_name text
)

CREATE TABLE residents (
  id bigserial,
  animal_id integer,
  name varchar(50), -- friendly name
  gender char(1), -- 'M', 'F', or 'O' (other)
  acquired date,
  location varchar(50) -- Exhibit name
)

-- 2. Now create INSERT statements to load sample data into the tables.
-- How can you view the data via the pgAdmin tool?

INSERT INTO animals (name, scientific_name, type)
VALUES ('Bengal Tiger', 'Panthera tigris tigris', 'mammal'),
       ('Polar Bear', 'Ursus maritimus', 'mammal'),
       ('Asian Elephant', 'Elephas maximus', 'mammal'),
       ('Western Lowland Gorilla', 'Gorilla gorilla gorilla', 'mammal'),
       ('Komodo Dragon', 'Varanus komodoensis', 'reptile'),
       ('American Flamingo', 'Phoenicopterus ruber', 'bird'),
       ('Arapiama', 'Arapiama gigas', 'fish')
       
INSERT INTO residents (animal_id, name, gender, acquired, location)
VALUES (7, 'Ariana', 'F', '2022-04-06', 'Amazonia'),
       (1, 'Benny', 'M', '2024-05-22', 'Great Cats'),
       (5, 'Kelly', 'F', '2023-01-12', 'Reptile Discovery Center'),
       (5, 'Ken', 'M', '2023-01-12', 'Reptile Discovery Center'),
       (1, 'Tony', 'M', '2020-03-15', 'Great Cats'),
       (1, 'Tania', 'F', '2020-03-15', 'Great Cats'),
       (2, 'Patty', 'F', '2024-10-15', 'Arctic Adventure'),
       (3, 'Eddy', 'M', '2019-12-07', 'Elephant Trails'),
       (4, 'Gary', 'M', '2021-02-22', 'Primates'),
       (4, 'Glenda', 'F', '2021-03-08', 'Primates'),
       (6, 'Franny', 'F', '2024-09-18', 'Bird House')

-- 2b. Create an additional INSERT statement for one of your tables. On purpose,
-- leave out one of the required commas separating the entries in the VALUES
-- clause of the query. What is the error message? Does it help you find the
-- error in the code?
INSERT INTO residents (animal_id, name, gender, acquired, location)
VALUES (7, 'Arty', 'M' '2022-04-06', 'Amazonia'),

