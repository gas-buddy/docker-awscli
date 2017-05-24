FROM alpine:latest

RUN addgroup awscli-app && adduser -SDHG awscli-app -u 1000 awscli-app

RUN apk --no-cache add py-pip python &&\
    pip install --upgrade pip awscli &&\
    apk add --update curl &&\
    apk del py-pip

VOLUME ["/data"]

USER awscli-app
