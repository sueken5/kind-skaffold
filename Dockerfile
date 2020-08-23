ARG REPOSITORY_PATH=/go/src/github.com/sueken5/kind-scaffold

FROM golang:1.14.0-buster as go_builder

ARG REPOSITORY_PATH

ENV GO111MODULE on

COPY ./  $REPOSITORY_PATH

WORKDIR $REPOSITORY_PATH

RUN go mod tidy

RUN go build -o $REPOSITORY_PATH/server $REPOSITORY_PATH/main.go

FROM debian:buster

ARG REPOSITORY_PATH

COPY --from=go_builder $REPOSITORY_PATH/server /server

ENTRYPOINT ["/server"]
