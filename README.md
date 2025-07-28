# Chore board app

Quick app to learn how to use Rails

## Running locally

1. Build images for rails and postgresql
   `docker-compose build`
2. Run the containers
   `docker-compose up`
3. If you get a database error - run the command to create database
   `docker-compose run web bin/rails db:prepare`
