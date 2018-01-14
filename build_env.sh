#!/bin/bash

rm -rf bin
mkdir -p bin

cd bin

# Set up Merlin32
curl -O https://www.brutaldeluxe.fr/products/crossdevtools/merlin/Merlin32_v1.0.zip
unzip -o Merlin32_v1.0.zip -d merlin_s
cd merlin_s/Merlin32_v1.0/Source
make -f linux_makefile
echo $OLDPWD
mv ./Merlin32 $OLDPWD/merlin
cd -

# CADIUS
curl -LOk https://github.com/mach-kernel/cadius/archive/1.2-b3.zip
unzip -o 1.2-b3.zip -d cadius_s
cd cadius_s/ca*
make
mv $(readlink -f ./cadius) $OLDPWD/cadius
cd -

# Cleanup
rm *.zip
rm -rf cadius_s
rm -rf merlin_s