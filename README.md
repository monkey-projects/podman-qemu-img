# Podman with QEMU

This is a very simple Docker file that builds an image for [podman](https://podman.io)
but that also includes [QEMU](https://www.qemu.org/) for cross-platform builds.
Currently, `arm64` and `amd64` are installed.  This should allow you to do builds for
those two platforms, like so:

```bash
podman build \
  -v $PWD:/opt/repo \
  --workdir /opt/repo \
  docker.io/monkeyprojects/podman \
  build -t my-image --platform linux/amd64,linux/arm64 .
```

# License

[MIT license](LICENSE)
