FROM golang:alpine

MAINTAINER Damiano Albani <damiano.albani@gmail.com>

RUN apk add --update git 

RUN go get -u github.com/cloudflare/cfssl/cmd/...

RUN apk del git && rm -rf /var/cache/apk/*

