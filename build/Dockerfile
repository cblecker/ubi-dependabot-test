FROM golang:1.25.4 AS builder

RUN mkdir -p /workdir
WORKDIR /workdir
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN go build .

####
FROM registry.access.redhat.com/ubi8/ubi-minimal:8.10-1295

RUN echo "appuser:x:1001:1001::/home/appuser:/sbin/nologin" >> /etc/passwd && \
    echo "appuser:x:1001:" >> /etc/group && \
    mkdir -p /home/appuser && \
    chown -R 1001:1001 /home/appuser
USER appuser

COPY --from=builder /workdir/ubi-dependabot-test /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/ubi-dependabot-test"]
