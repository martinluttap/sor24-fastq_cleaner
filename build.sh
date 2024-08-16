#!/bin/bash

set -eo pipefail

function build {
	make -C $1 build
}

function publish {
	make -C $1 publish
}

PROJ_NAME=fastq_cleaner

case "$1" in
	build) 
        docker build . --file ./Dockerfile -t ghcr.io/${GHCR_NAMESPACE}/${PROJ_NAME}:latest
	;;
	publish)
        docker push ghcr.io/${GHCR_NAMESPACE}/${PROJ_NAME}:latest
	;;
esac