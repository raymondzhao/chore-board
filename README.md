# Chore board app

Quick app to learn how to use Rails

## Running locally

1. Build images for rails and postgresql

   `docker-compose build`

2. Run the containers

   `docker-compose up`

3. If you get a database error - run the command to create database

   `docker-compose run web bin/rails db:prepare`

## Working with the database

Default case - will run migrations and then hydrate with seed data

`docker-compose run --rm web bin/setup-dev.sh`

This will reconstruct the db and hydrate db with seed data

`docker-compose run --rm web bin/setup-dev.sh --reset`
