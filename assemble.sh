#!/usr/bin/env bash
ls src/*.S | xargs ./bin/cadius INDENTFILE
ls src/*.S | xargs ./bin/merlin -V ./src/macro
