# Nomad

## Introduction

This is a Dockerized Nomad forked from: [https://github.com/djenriquez/nomad](https://github.com/djenriquez/nomad)

This also contains a 3 server & 3 client docker-compose example

## Contents

- [Changes](#changes)
- [Build](#build)
- [Example](#example)

## Changes

- Added `ca-certificates` package
- Added `gettext` package for `envsubst` binary
- Reduced the functionality of `start.sh`
- Added `envsubst` to `start.sh` for env var replacement in config files

See `client.hcl.tpl` and `docker-compose.yml` for the inclusion of `NOMAD_CLIENT_PORT`

## Build

The docker image is in the Docker Hub already, so you don't have to build anything. But, if you want to, run:

```bash
make
```

## Example

Start a 3x3 Nomad Cluster:

```bash
docker-compose up -d
```

Visit the UI at [localhost:4646](http://localhost:4646)
