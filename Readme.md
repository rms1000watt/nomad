# Nomad

## Introduction

This is a Dockerized Nomad forked from: [https://github.com/djenriquez/nomad](https://github.com/djenriquez/nomad)

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

```bash
make
```

## Example

```bash
docker-compose up -d
```

Visit the UI at [localhost:4646](http://localhost:4646)
