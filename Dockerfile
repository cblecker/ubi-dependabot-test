FROM registry.access.redhat.com/ubi8/ubi:8.7

COPY hello.sh /

ENTRYPOINT ["/hello.sh"]
