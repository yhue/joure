#!/usr/bin/env bash
set -eux

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# reset peaberry
peadir=~/.peaberry
[[ -d ${peadir} ]] && rm -rf ${peadir}
git clone https://github.com/yhue/peaberry.git ${peadir}

. ${SCRIPT_DIR}/vim/setup.sh
. ${SCRIPT_DIR}/git/setup.sh
