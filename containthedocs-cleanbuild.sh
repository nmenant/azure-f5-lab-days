#!/usr/bin/env bash

set -x

: ${DOC_IMG:=0xhiteshpatel/containthedocs:2.1}

exec docker run --rm -it \
  -v $PWD:$PWD --workdir $PWD \
  ${DOCKER_RUN_ARGS} \
  -e "LOCAL_USER_ID=$(id -u)" \
  ${DOC_IMG} make -C docs clean html