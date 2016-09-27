
FROM debian:latest
MAINTAINER Simen Andresen <simena86@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y python python-pip python-virtualenv supervisor vim apt-utils git

# Build IfcOpenshell
# Heavily based on .travis.yml in the IfcOpenshell repo
RUN apt-get install -y libboost1.55-dev
RUN apt-get install -y libboost-regex1.55-dev
RUN apt-get install -y libboost-system1.55-dev
RUN apt-get install -y libboost-thread1.55-dev
RUN apt-get install -y libboost-program-options1.55-dev

# Setup flask application
RUN mkdir -p /deploy/app
RUN mkdir -p /deploy/logs
RUN mkdir -p /deploy/tmp
RUN mkdir -p /deploy/auth

# Setup supervisord
RUN mkdir -p /var/log/supervisor

CMD ["sleep", "10"]






