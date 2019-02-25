FROM alpine:3.8

ENV GOPATH="${HOME}/go"
ENV PATH="${GOPATH}/bin:${PATH}"

RUN apk -U add git autoconf automake libtool curl make g++ unzip go protobuf-dev

RUN go get -u github.com/golang/protobuf/protoc-gen-go
