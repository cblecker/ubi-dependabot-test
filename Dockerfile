FROM registry.access.redhat.com/ubi8/ubi@sha256:8ce9caf9d86c83b47bda7c73a8fafb5fcf17f56ea13c050408cfb59aae28ae98

COPY hello.sh /

ENTRYPOINT ["/hello.sh"]
