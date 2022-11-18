FROM registry.access.redhat.com/ubi8/ubi:8.6-903

COPY hello.sh /

ENTRYPOINT ["/hello.sh"]
