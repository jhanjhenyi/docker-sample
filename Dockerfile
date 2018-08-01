FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY . /docker_app
WORKDIR /docker_app
RUN pip install -r requirements.txt
CMD python App/app.py