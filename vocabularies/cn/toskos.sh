#!/bin/sh

INFILES="cn-metadata.ttl rdaa.ttl rdac.ttl cn.ttl"
OUTFILE=cn-skos.ttl

SKOSIFYHOME="../../tools/skosify"
LOGFILE=skosify.log
OPTS="--set-modified --no-mark-top-concepts --no-enrich-mappings --namespace http://urn.fi/URN:NBN:fi:au:cn:"

$SKOSIFYHOME/skosify.py $OPTS $INFILES -o $OUTFILE 2>$LOGFILE
