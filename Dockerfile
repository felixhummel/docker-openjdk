FROM ubuntu:12.04

RUN echo 'deb http://de.archive.ubuntu.com/ubuntu/ precise main restricted universe' > /etc/apt/sources.list
RUN apt-get update
RUN apt-get install --yes --no-install-recommends\
        openjdk-7-jre-headless

