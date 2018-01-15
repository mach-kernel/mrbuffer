#!/usr/bin/env bash
ls src/*.S | xargs ./bin/cadius INDENTFILE
ls src/*.S | xargs ./bin/merlin -V ./src/macro

sed -ie 's/Type(00)/Type(B3)/' src/_FileInformation.txt

./bin/cadius DELETEFILE blankdisk.po NEW.DISK/main
./bin/cadius ADDFILE blankdisk.po NEW.DISK src/main
gsplus