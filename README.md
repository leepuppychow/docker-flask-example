## Example Repo for using Docker with Flask

Note: this repo is set to automatically build docker images and host them in my [DockerHub repo](https://hub.docker.com/r/leepuppychow/docker-flask-example)

1. Build Docker image with: `docker build -t docker-flask-1`
    * This will create an image with name `docker-flask-1`
2. Run Docker container with: `docker run -it -p 5000:5000 --name=docker-flask-container-1 docker-flask-1`
    * -it is for interactive terminal
    * -p 5555:5000 (this maps the exposed port from the flask app (5000 in this case) to your computer's port 5555)
    * --name is the name of the Docker container created by docker run
    * `docker-flask-1` refers to the the image name build by the previous command

3. The docker-compose.yml file lets you define multiple services (such as our server, a postgres database, celery workers, redis, etc)
    * You can spin up all the services (locally) at once with docker-compose via `docker-compose up`
    * Right now since the Docker image is hosted in DockerHub you don't have to run anything locally (typically would run `docker-compose build` first to build images for each of your services)
    * A cool thing with docker-compose is you can start several replicas of a service by doing: `docker-compose up --scale server=5` (here server refers to the name of the service defined in our docker-compose.yml file)
    * You can see what docker-compose services (container) are running with `docker-compose ps`
    