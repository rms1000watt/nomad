default: build

VERSION_TAG ?= latest

DATE_SECONDS ?= $(shell date +%Y%m%d-%H%M%S)
VERSION_DATE_SECONDS ?= v$(DATE_SECONDS)

.PHONY: build
build:
	@ echo "Containerizing..."
	@ docker build --no-cache --rm -t rms1000watt/nomad:$(VERSION_TAG) .
	@ echo "Container Created:"
	@ echo "    rms1000watt/nomad:$(VERSION_TAG)"
	@ docker tag rms1000watt/nomad:$(VERSION_TAG) rms1000watt/nomad:$(VERSION_DATE_SECONDS)
	@ echo "Tagged 'latest' as:"
	@ echo "    rms1000watt/nomad:$(VERSION_DATE_SECONDS)"
