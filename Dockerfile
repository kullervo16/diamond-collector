FROM alpine:3.4
RUN apk add --update \
    linux-headers \
    python \
    python-dev \
    py-pip \
    build-base \
  && pip install diamond \
  && rm -rf /var/cache/apk/*
RUN mkdir /var/log/diamond /etc/diamond
ENTRYPOINT diamond && tail -f /var/log/diamond/diamond.log
