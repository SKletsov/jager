FROM golang:1.16.4  AS builder
ENV GO111MODULE=on
WORKDIR $GOPATH/src
ADD go.mod .
ADD go.sum .
ADD . .
RUN go mod download
RUN go build -o main
ENTRYPOINT ["./main"]