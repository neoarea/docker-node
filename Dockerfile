FROM node
MAINTAINER neodev <dev@neoarea.com>
ENV DEBIAN_FRONTEND noninteractive
RUN mkdir -p ~/projects && cd ~/projects && git clone https://github.com/neoarea/docker-node.git
RUN apt-get update && apt-get install -y nano rsync
RUN npm i -g yarn