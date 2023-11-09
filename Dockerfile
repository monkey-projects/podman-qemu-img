FROM alpine:latest

ENTRYPOINT ["podman"]

RUN apk update
RUN apk add podman fuse-overlayfs qemu-system-arm qemu-system-x86_64 qemu-tools

