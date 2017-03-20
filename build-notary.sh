#!/bin/bash
set -e
#TODO: update the value
NOTARY_ROOT=~/gows/src/github.com/docker/notary/
NOTARYPKG=github.com/docker/notary
COMMID_ID=`git --git-dir=$NOTARY_ROOT/.git rev-parse --short HEAD`
VERSION=`cat $NOTARY_ROOT/NOTARY_VERSION`

echo "building server"
go build -o ./notary-server -tags pkcs11 \
    -ldflags "-w -X ${NOTARYPKG}/version.GitCommit=${COMMID_ID} -X ${NOTARYPKG}/version.NotaryVersion=${VERSION}" ${NOTARYPKG}/cmd/notary-server 

echo "building signer"
go build -o ./notary-signer -tags pkcs11 \
    -ldflags "-w -X ${NOTARYPKG}/version.GitCommit=${COMMID_ID} -X ${NOTARYPKG}/version.NotaryVersion=${VERSION}" ${NOTARYPKG}/cmd/notary-signer
