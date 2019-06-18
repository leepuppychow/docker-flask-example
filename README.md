1. Build Docker image with: `docker build -t docker-flask-1`
    * This will create an image with name `docker-flask-1`
2. Run Docker container with: `docker run -it -p 5000:5000 --name=docker-flask-container-1 docker-flask-1`
    * -it is for interactive terminal
    * -p 5555:5000 (this maps the exposed port from the flask app (5000 in this case) to your computer's port 5555)
    * --name is the name of the Docker container created by docker run
    * `docker-flask-1` refers to the the image name build by the previous command


