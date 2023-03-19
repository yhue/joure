#!/usr/bin/env bash
set -eux

dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# reset peaberry
peadir=~/.peaberry
[[ -d ${peadir} ]] && rm -rf ${peadir}
git clone https://github.com/yhue/peaberry.git ${peadir}

# make backup space
date +%s > ${dir}/backup/.trace

. ${dir}/vim/setup.sh
. ${dir}/git/setup.sh
