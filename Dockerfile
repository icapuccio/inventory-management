FROM elixir:1.6
MAINTAINER Ignacio Capuccio <ignacio.capuccio@widergy.com>

ENV HOME=/usr/src/inventory-management

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y inotify-tools build-essential postgresql-client

RUN apt-get install -y sudo wget curl zip unzip

RUN curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash - && apt-get install -y nodejs

COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]

ADD . $HOME

WORKDIR $HOME
EXPOSE 4000

