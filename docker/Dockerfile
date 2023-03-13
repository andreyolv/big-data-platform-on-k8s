FROM python:3.9.16-bullseye

ENV JAVA_HOME "/usr/lib/jvm/java-1.17.0-openjdk-amd64"

USER root 

RUN apt-get update \
  && apt-get install -y \
    openjdk-17-jre-headless \
    openjdk-17-jdk-headless 

COPY . /app

USER 1001

WORKDIR /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
