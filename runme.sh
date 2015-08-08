#!/usr/bin/env sh

_MY_DIR="$( cd "$( dirname "${0}" )" && pwd )"

function _echorun() {
    echo 1>&2 ${1+"${@}"}

    ${1+"${@}"}
}

for i in base one_glue two_glue red_glue blue_glue ; do
    _echorun docker-compose --file "${_MY_DIR}/${i}.yml" up
done
