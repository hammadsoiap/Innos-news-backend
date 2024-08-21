## About Innos-news API Backend

This is a RESTful API application that aggregates data from multiple news sources, secured with Sanctum authentication. You can interact with the API by importing the provided "News API Postman collection" available in the repository named `INNOS-News API collection.postman_collection.json` .

# Requirement #
 php : ^8.2.1

# Installation Instructions

## Prerequisites
- Makesure Docker is installed. If Docker is not, the project can also be run using Apache, Nginx, or`php artisan serve` 

## Environment Setup
# 1 Navigate to the project directory:
- `cd /Innos-news-backend`
  
# 2 Copy the example environment file or Rename the .env.example file .env
- `cp .env.example .env`
- Update AuthApiKeys From News sources KEY ENV value
- Update database credentials or you can use Mysql
- news source website url for api keys
    `https://bonobo.capi.gutools.co.uk/register/developer`
    `https://developer.nytimes.com/`

## Setup Methods Running with Docker

#### Using Docker Compose for run project first time ####

`docker-compose up --build --force-recreate`


### Docker Setup
Start the Docker containers:
- `docker-compose up`
  
## Manual Setup Required
Update the database configuration in the .env file according to your local machine settings.

Install dependencies:
- `composer install`

Generate Key
Run `php artisan key:generate`

Run database migrations: 
- `php artisan migrate`
  

## Postman Collection
To interact with the API, import the provided "News API Postman collection" into your Postman application.

## Note for Postman
- base_url: Base URL of the API (e.g., http://localhost/api)
- authToken: Token for authentication (set automatically after login)
- Ensure that the authToken is set in the environment variables in Postman for authenticated requests.
  
 
