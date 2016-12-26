FROM debian:jessie
MAINTAINER Stinkeste Sébastien

ARG PLEX_VERSION=1.3.3.3148-b38628e

RUN apt-get update && apt-get -y install wget apt-transport-https
RUN wget https://downloads.plex.tv/plex-media-server/${PLEX_VERSION}/plexmediaserver_${PLEX_VERSION}_amd64.deb
RUN dpkg -i plexmediaserver_${PLEX_VERSION}_amd64.deb
RUN apt-get update && apt-get install -y plexmediaserver

CMD ["/usr/sbin/start_pms", "start"]

