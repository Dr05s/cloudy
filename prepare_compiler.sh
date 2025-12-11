#!/bin/bash
mkdir clang
cd clang
bash <(curl -s https://raw.githubusercontent.com/Neutron-Toolchains/antman/main/antman) -S=11032023
cd ..
wget $1 -O gcc.$2
case $2 in
  zip) unzip gcc.$2 ;;
  tar.gz | tar.xz) tar -xf gcc.$2 ;;
esac
rm -rf gcc.$2