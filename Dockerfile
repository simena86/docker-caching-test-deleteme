
FROM debian:latest
MAINTAINER Simen Andresen <simena86@gmail.com>

#ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y vim
#RUN apt-get install -y vim

CMD ["sleep", "3"]






