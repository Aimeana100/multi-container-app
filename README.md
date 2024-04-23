# Laravel Multi-Container Application

This Docker-based Laravel application utilizes multiple containers, including Nginx, PHP, MySQL, Composer, Artisan, and NPM. This configuration is designed to facilitate development by providing a complete environment without requiring local dependency installations.

## Prerequisites

Before starting, ensure Docker and Docker Compose are installed on your machine:

- Docker: [Get Docker](https://docs.docker.com/get-docker/)
- Docker Compose: [Install Docker Compose](https://docs.docker.com/compose/install/)

## Getting Started

Follow these steps to set up and run the application on your local machine for development and testing purposes.

### Step 1: Clone the Repository

Clone this repository to your local machine:

```bash
git clone https://github.com/Aimeana100/multi-container-app.git
cd multi-container-app
```

### Step 2: Prepare the Laravel Application

Before starting the full application, run the Composer container to install Laravel dependencies. This utility container syncs with your local ./src directory to set up Laravel on your host machine:

*For some OS it may require you to create /src folder manually into your working directory*

```bash
##for first setup:
docker-compose run composer create-project laravel/laravel .

## for this clone
docker-compose run composer install
```


### Step 3: Environment Setup

Copy the sample environment configuration and adjust as necessary, 

Configure the MySQL environment variables accordingly remember that from the laravel 11 sqlite is set as default database:


```bash
cp env/mysql.env.example env/mysql.env

## for first setup: all is set automatically for you
 
# for this clone, just copy
cp src/.env.example src/.env
```

### Step 4: Build and Run Containers
Build and start the containers from the project root:

```bash
docker-compose run server
```
### Step 5: Run basic laravel commands 

```bash
docker-compose run artisan key:generate
docker-compose run artisan migrate
# docker-compose run artisan db:seed 
```

### Step 5: Access the Application
Once the containers are running, you can access the application via:

```bash
http://localhost:8000
```
### Project Structure

- src/: Contains all Laravel files.
- dockerfiles/: Custom Dockerfiles for the project.
- nginx/: Nginx configuration files.
- env/: Environment files for Docker services.

### Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

- Reporting issues and suggesting enhancements.
- Submitting pull requests to improve the project.