#! /bin/bash
set -e

git clone --depth 1 --shallow-submodules https://github.com/cmuench/pacman-auto-update.git
cd pacman-auto-update/package

makepkg --syncdeps --needed --rmdeps --force --noconfirm
sudo pacman --upgrade *.pkg.*

cd ../../
rm --recursive pacman-auto-update
