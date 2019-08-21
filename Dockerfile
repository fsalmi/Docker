FROM ubuntu:18.04

RUN apt-get -y update && apt-get -y upgrade


RUN apt-get install -y python3-pip
RUN apt-get install -y python3-setuptools


WORKDIR /Users/fsalmi/Documents/SIMPLON/Docker


COPY requirements.txt .
RUN pip3 install tornado==4.5.3

RUN pip3 install -r requirements.txt
RUN pip3 install -U jupyter

RUN virtualenv venv 
RUN . venv/bin/activate 


EXPOSE 8888

CMD jupyter notebook --ip 0.0.0.0 --port 8888 --allow-root --no-browser