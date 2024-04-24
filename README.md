# PET SHOP ADMIN


### A administration system

A administration system to manage many types of business, in this case, was used a Pet Shop Admin like example.

## Project Stack

* Repository
    * Github

* Development
    * Ruby On Rails
        * Libraries
            * Sidekiq
            * Fae
    * Redis
    * PostgreSQL
    * Mailcatcher
* Environment
    * Docker
    * Docker-compose

## Prerequisites

Have Docker installed in your machine


[See how to install Docker here](https://docs.docker.com/install/)


## Getting Started

* To see this application working in your machine, clone this project with:
```
git clone git@github.com:eduardo-rubio/petshop_admin.git
```
### Installing PET SHOP ADMIN

* Gems install

To install the gems files run: 
```
docker-compose run --rm app bundle install
```

* Database creation and make migrations

```
docker-compose run --rm app bundle exec rake db:create db:migrate
```
* Build the application
```
docker-compose build
```
* Seed the database
```
docker-compose run --rm app bundle exec rake fae:seed_db
```
* Up the application
```
docker-compose up
```
* Now, create your first user.</br>
To do it access:</br>
[http://localhost:3000/admin/first_user](http://localhost:3000/admin/first_user/)


[http://localhost:3000/sidekiq/](http://localhost:3000/sidekiq/)

* Redis
``` 
redis-cli -h 127.0.0.1 -p 6379 PING
``` 
