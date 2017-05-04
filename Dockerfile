FROM alpine:latest

RUN apk --no-cache add py-pip python &&\
    pip install --upgrade pip awscli &&\
    apk add --update curl

VOLUME ["/data"]
