FROM golang:1.22.0 AS builder

RUN mkdir -p /workdir
WORKDIR /workdir
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN go build .

####
FROM registry.access.redhat.com/ubi8/ubi-minimal:8.9-1137

COPY --from=builder /workdir/ubi-dependabot-test /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/ubi-dependabot-test"]
