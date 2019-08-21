# Docker
We want to create a container with ubuntu and install in it python and jupyter. 
First create the Dockerfile, where we use the ubuntu image and add python installing, pip and virtual environment. 
Then we create the image with the requirements: 
```bash
docker build -f Dockerfile -t test_ubuntu .
```
Then we run it 
```bash
docker run -p 8888:8888 test_ubuntu
