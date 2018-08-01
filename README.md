# Docker Sample

## 建立 Application

```python=
from flask import Flask


app = Flask(__name__)


@app.route("/")
def hello():
    return "Hello Docker"


if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port="5000")

```

## 建立 Requirements File

```
$ pip freeze > requirements.txt
```

## 建立 Dockerfile

```dockerfile=
FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY . /docker_app
WORKDIR /docker_app
RUN pip install -r requirements.txt
CMD python App/app.py
```

## 建置 docker image

```
$ docker build -t docker-sample .
```

## 執行 Docker Container

```
$ docker run -p 5000:5000 docker-sample
```