FROM golang:1.22.6 AS builder

RUN mkdir -p /workdir
WORKDIR /workdir
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN go build .

####
FROM registry.access.redhat.com/ubi8/ubi-minimal:8.10-896.1717584414

COPY --from=builder /workdir/ubi-dependabot-test /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/ubi-dependabot-test"]
