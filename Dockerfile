FROM alpine:latest

RUN addgroup awscli-app && adduser -SDHG awscli-app awscli-app

RUN apk --no-cache add py-pip python &&\
    pip install --upgrade pip awscli &&\
    apk add --update curl

USER awscli-app

ENTRYPOINT ["/bin/sh"]

VOLUME ["/data"]
