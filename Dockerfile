FROM registry.access.redhat.com/ubi8/ubi:8.5

COPY hello.sh /

ENTRYPOINT ["/hello.sh"]
