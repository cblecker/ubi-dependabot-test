FROM registry.access.redhat.com/ubi8/ubi@sha256:d55ca0e986d4cc42765ee938c911b66f08abafb3bab7b8ac96fc7b0cc5706565

COPY hello.sh /

ENTRYPOINT ["/hello.sh"]
