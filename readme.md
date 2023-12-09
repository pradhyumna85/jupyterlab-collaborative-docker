# To be run in a Play With Docker (PWD) instance 

## Steps

### 1. Run the container in background

> docker run -it -d -p 8888:8888 -p 8000:8000 -p 5000:5000 --name miniconda pradhyumna85/halminiconda4interviews bash

### 2. Check running containers and their status

> docker ps -a

### 3. Access shell

> docker exec -it miniconda bash

### 4. Run jupyter lab

> jupyter lab --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser --allow-root

### Then forward port 8888 from PWD and then use the token displayed in the terminal (select token and ctrl + insert to copy)