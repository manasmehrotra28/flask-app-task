FROM ubuntu
MAINTAINER manas
RUN apt-get update -y && apt-get install -y python-pip python-dev
COPY flask/requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY flask/. /app
ENTRYPOINT ["python"]
CMD ["runserver.py"]

