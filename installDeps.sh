#!/bin/bash

# stop on errors
set -e

if [ "$(id -nu)" != "root" ]; then
  echo "Must be called as root"
  exit 1
fi

PKG_MGR_FOUND=0
if which dnf 2>/dev/null >/dev/null; then
  PKG_MGR_FOUND=1
  FLAGS="-y"
  echo "Detected dnf package manager"

  dnf $FLAGS install git

  echo "################################"
  echo "## erforce"
  echo "################################"
  dnf $FLAGS install cmake protobuf-compiler qt5-devel luajit-devel gcc-c++

  echo "################################"
  echo "## tigers"
  echo "################################"
  dnf $FLAGS install java-11-openjdk-devel
fi

if which apt-get 2>/dev/null >/dev/null; then
  PKG_MGR_FOUND=1
  FLAGS="-qq -y"
  echo "Detected apt-get package manager"

  apt-get $FLAGS update
  apt-get $FLAGS install git

  echo "################################"
  echo "## erforce"
  echo "################################"
  apt-get $FLAGS install cmake protobuf-compiler qtbase5-dev libluajit-5.1-dev g++

  echo "################################"
  echo "## tigers"
  echo "################################"
  apt-get $FLAGS install openjdk-11-jdk
fi

if which pacman 2>/dev/null >/dev/null; then
  PKG_MGR_FOUND=1
  FLAGS="--needed"
  echo "Detected Arch Linux (Pacman)"

  pacman -S $FLAGS git

  echo "################################"
  echo "## erforce"
  echo "################################"
  pacman -S $FLAGS cmake protobuf qt5-base luajit gcc

  echo "################################"
  echo "## tigers"
  echo "################################"
  pacman -S $FLAGS jdk11-openjdk
fi

if [ $PKG_MGR_FOUND == 0 ]; then
  echo "Your distribution is not yet supported"
  exit 1
fi

