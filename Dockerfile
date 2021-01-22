FROM python:3.7-alpine
MAINTAINER Amir

ENV PYTHONUNBUFFERD 1

COPY ./reqs.txt /reqs.txt
RUN pip install -r /reqs.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user

