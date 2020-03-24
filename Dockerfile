FROM ubuntu:bionic

MAINTAINER junior <ijuniorfu@gmail.com>

RUN mv /etc/apt/sources.list /etc/apt/sourses.list.bak
ADD sources.list /etc/apt/sources.list

# Install packages
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y software-properties-common language-pack-en-base \
    && LC_ALL=en_US.UTF-8 \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime \
    && apt-get update \
    && apt-get upgrade -y
