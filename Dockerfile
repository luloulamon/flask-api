FROM ubuntu:latest
MAINTAINER deepfried
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY ./app/ /app/
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
