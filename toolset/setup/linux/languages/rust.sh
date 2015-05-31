#!/bin/bash

RETCODE=$(fw_exists ${IROOT}/rust1.0.0installed)
[ ! "$RETCODE" == 0 ] || { return 0; }

fw_get https://static.rust-lang.org/dist/rust-1.0.0-x86_64-unknown-linux-gnu.tar.gz
fw_untar rust-1.0.0-x86_64-unknown-linux-gnu.tar.gz

${IROOT}/rust-1.0.0-x86_64-unknown-linux-gnu/install.sh --prefix=${IROOT}

touch ${IROOT}/rust1.0.0installed
