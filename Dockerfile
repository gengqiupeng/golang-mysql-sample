FROM golang:1.8-stretch

MAINTAINER Sakeven "sakeven.jiang@daocloud.io"

ADD . $GOPATH/src/app
RUN apt-get install git
RUN go get app
RUN CGO_ENABLED=0 go install -a app

EXPOSE 80
CMD app
