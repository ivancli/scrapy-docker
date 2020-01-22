FROM python:3.8.1-alpine

MAINTAINER Ivan Li <ivan.li@hotmail.com>

USER root

RUN apk update && \
  apk add --no-cache \
    gcc \
    linux-headers \
    musl-dev \
    libffi-dev \
    libxml2-dev \
    libxslt-dev \
    openssl-dev \
    python3-dev \
    python3

RUN pip3 install --upgrade pip
RUN pip3 install scrapy

WORKDIR /app

CMD ["scrapy"]