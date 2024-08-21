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

Navigate to running container you can use
- `docker ps`
- copy docker container id and and open shell using `docker exec -it containerid0 sh`
- ![image](https://github.com/user-attachments/assets/245d079d-f078-47f4-8d9d-eb87b63581dc)


Install dependencies:
- `composer install`

Generate Key
Run `php artisan key:generate`

Run database migrations: 
- `php artisan migrate`
  

## Postman Collection
To interact with the API, import the provided "News API Postman collection" into your Postman application.

## Note for Postman
- base_url: Base URL of the API (e.g., http://localhost:8081/api)
- authToken: Token for authentication (set automatically after login)
- Ensure that the authToken is set in the environment variables in Postman for authenticated requests.

## Frontend repository link ##
  - [https://github.com/hammadsoiap/innos-news-frontend](https://github.com/hammadsoiap/innos-news-frontend)

## Screenshots ##
![Screenshot_12](https://github.com/user-attachments/assets/f4a96ebf-8b0d-4c26-99e0-9430fcb110de)
![Screenshot_13](https://github.com/user-attachments/assets/2f805093-5a75-4d7a-afe8-cfba9708058e)
![Screenshot_14](https://github.com/user-attachments/assets/10b9ac9b-37e9-4305-b411-a4c978f4f5c3)
![Screenshot_15](https://github.com/user-attachments/assets/6722a613-8592-4935-b858-5ab05c6fa85e)
![Screenshot_16](https://github.com/user-attachments/assets/3c1085aa-b590-4d92-9dc2-858671a06b2a)
![Screenshot_18](https://github.com/user-attachments/assets/0c2cd097-c676-4b8d-b602-da9cf01b90bd)
![Screenshot_19](https://github.com/user-attachments/assets/c229d7d2-89c2-4da0-a2a2-2f686c86b209)
![Screenshot_20](https://github.com/user-attachments/assets/c2cd21a7-9531-49fd-9b26-117f4de884a1)
![Screenshot_21](https://github.com/user-attachments/assets/134a3781-d799-4f5e-80ef-ce5454654a13)
![Screenshot_22](https://github.com/user-attachments/assets/269a73d8-d076-4ad2-a0f7-97581dec31d4)
![Screenshot_23](https://github.com/user-attachments/assets/e211c5f0-524e-43e0-a4d4-433a03c5dd94)
![Screenshot_24](https://github.com/user-attachments/assets/f0d2d5fc-24c0-4a0b-9d3c-11bab0fbbf41)
![Screenshot_25](https://github.com/user-attachments/assets/d6eb6092-1517-4c9a-abde-61f15b52146a)
![Screenshot_26](https://github.com/user-attachments/assets/e2b9f57e-9066-4f95-90be-ac251e4d4a70)
![Screenshot_27](https://github.com/user-attachments/assets/4f579686-ba90-4fe0-a586-41755e3773f3)
![Screenshot_12](https://github.com/user-attachments/assets/f4a96ebf-8b0d-4c26-99e0-9430fcb110de)


 
