# Missing DinD [![Docker Automated build](https://img.shields.io/docker/automated/johnmccabe/dind.svg?style=flat-square)](https://hub.docker.com/r/johnmccabe/dind/)

This repo contains Dockerfiles based on Dockers [DinD images](https://hub.docker.com/_/docker/) for old Docker versions which aren't currently available on the Hub, i.e. versions older than `1.11.2`.

**WARNING** these are very basic implementations, if you encounter any issues please raise a bug or even better a PR.

## DinD Versions

The following versions of DinD are currently available as of Jun 2017.

### Docker Supplied Versions

- docker:17.06.0-dind
- docker:17.05.1-dind
- docker:17.04.1-dind
- docker:17.03.1-dind
- docker:1.13.1-dind
- docker:1.12.6-dind
- docker:1.11.2-dind

### Missing DinD Versions

- johnmccabe/dind:1.10.3
- johnmccabe/dind:1.9.1
- johnmccabe/dind:1.8.3
- johnmccabe/dind:1.7.1
- johnmccabe/dind:1.6.2
- johnmccabe/dind:1.5.0


## Building

All images can be built at once from the base of the repo:
```
make all
```
It is also possible to build an image for a specific version by cd'ing into that versions directory:
```
cd 1.8.3
make image
```

## Running

The Missing DinD images can be run in the same way as Dockers official DinD images:
```
# docker run --rm --privileged --name dind183 -ti johnmccabe/dind:1.8.3
```

You can also use the Missing DinD images as docker clients (where `dind183` below is the name/id of the DinD server you're talking to):
```
# docker run --rm -e DOCKER_HOST=tcp://docker:2375 --link dind183:docker -ti johnmccabe/dind:1.8.3 docker version

Client:
 Version:      1.8.3
 API version:  1.20
 Go version:   go1.4.2
 Git commit:   f4bf5c7
 Built:        Mon Oct 12 05:37:18 UTC 2015
 OS/Arch:      linux/amd64

Server:
 Version:      1.8.3
 API version:  1.20
 Go version:   go1.4.2
 Git commit:   f4bf5c7
 Built:        Mon Oct 12 05:37:18 UTC 2015
 OS/Arch:      linux/amd64

```

## Versions in Docker APT repo

The following versions are available in Dockers APT repo, those marked with a ✅ have been turned into an image, but should a more specific version be required you can reference a specific package version. Packages marked with 🐳 have an official image available.

### Trusty
https://apt.dockerproject.org/repo/dists/ubuntu-trusty/main/filelist
```
- ✅ docker-engine_1.10.3-0~trusty_amd64.deb
  - docker-engine_1.10.2-0~trusty_amd64.deb
  - docker-engine_1.10.1-0~trusty_amd64.deb
  - docker-engine_1.10.0-0~trusty_amd64.deb
- ✅ docker-engine_1.9.1-0~trusty_amd64.deb
  - docker-engine_1.9.0-0~trusty_amd64.deb
- ✅ docker-engine_1.8.3-0~trusty_amd64.deb
  - docker-engine_1.8.2-0~trusty_amd64.deb
  - docker-engine_1.8.1-0~trusty_amd64.deb
  - docker-engine_1.8.0-0~trusty_amd64.deb
- ✅ docker-engine_1.7.1-0~trusty_amd64.deb
  - docker-engine_1.7.0-0~trusty_amd64.deb
- ✅ docker-engine_1.6.2-0~trusty_amd64.deb
  - docker-engine_1.6.1-0~trusty_amd64.deb
  - docker-engine_1.6.0-0~trusty_amd64.deb
- ✅ docker-engine_1.5.0-0~trusty_amd64.deb
```

### Xenial

https://apt.dockerproject.org/repo/dists/ubuntu-xenial/main/filelist
```
- 🐳 docker-engine_17.05.0~ce-0~ubuntu-xenial_amd64.deb
- 🐳 docker-engine_17.04.0~ce-0~ubuntu-xenial_amd64.deb
- 🐳 docker-engine_17.03.1~ce-0~ubuntu-xenial_amd64.deb
  - docker-engine_17.03.0~ce-0~ubuntu-xenial_amd64.deb
- 🐳 docker-engine_1.13.1-0~ubuntu-xenial_amd64.deb
  - docker-engine_1.13.0-0~ubuntu-xenial_amd64.deb
- 🐳 docker-engine_1.12.6-0~ubuntu-xenial_amd64.deb
  - docker-engine_1.12.5-0~ubuntu-xenial_amd64.deb
  - docker-engine_1.12.4-0~ubuntu-xenial_amd64.deb
  - docker-engine_1.12.3-0~xenial_amd64.deb
  - docker-engine_1.12.2-0~xenial_amd64.deb
  - docker-engine_1.12.1-0~xenial_amd64.deb
  - docker-engine_1.12.0-0~xenial_amd64.deb
- 🐳 docker-engine_1.11.2-0~xenial_amd64.deb
  - docker-engine_1.11.1-0~xenial_amd64.deb
  - docker-engine_1.11.0-0~xenial_amd64.deb
```
