#! /bin/sh

BASEDIR="$(dirname $0)"
awk --lint -f ${BASEDIR}/split_by_chapter.awk $1
