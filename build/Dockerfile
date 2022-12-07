FROM golang:1.19.4 AS builder

RUN mkdir -p /workdir
WORKDIR /workdir
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN go build .

####
FROM registry.access.redhat.com/ubi8/ubi-minimal:8.7-923

COPY --from=builder /workdir/ubi-dependabot-test /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/ubi-dependabot-test"]
