FROM golang:1.19.3 AS builder

RUN mkdir -p /workdir
WORKDIR /workdir
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN go build .

####
FROM registry.access.redhat.com/ubi8/ubi-minimal:8.6-985

COPY --from=builder /workdir/ubi-dependabot-test /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/ubi-dependabot-test"]

LABEL org.opencontainers.image.source="https://github.com/cblecker/ubi-dependabot-test" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.base.name="registry.access.redhat.com/ubi8/ubi-minimal:8.6-985" \
      org.opencontainers.image.authors="Christoph Blecker <admin@toph.ca>" \
      org.opencontainers.image.description="Test image for dependabot docker image updates"
