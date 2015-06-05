#!/bin/bash

# Something like this will need to be done once we add database tests
# sed -i 's|tcp(.*:3306)|tcp('"${DBHOST}"':3306)|g' src/main.rs

CARGO=$IROOT/bin/cargo
export PATH=$IROOT/bin:$PATH;
export CARGO_HOME=$IROOT;
export LD_LIBRARY_PATH=$IROOT/lib:$LD_LIBRARY_PATH;

$CARGO build --release

$CARGO run --release &
