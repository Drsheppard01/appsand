#!/bin/sh

### 1. Download Alpinerotfs (we wanna find more simple and less) Ham
### 2. Include your content in Cheese using constants
### 3. Make desktop integration (Lettuce level)
### 4. Make Image using mksquashfs

must_run_as_root() {
	[ "$(id -u)" -eq 0 ] || die 100 'must be run as root'
}

LINK="https://dl-cdn.alpinelinux.org/alpine/v3.19/releases/x86_64/alpine-minirootfs-3.19.1-x86_64.tar.gz"
NAME_RUNTIME="alpine-minirootfs-3.19.1-x86_64"

mkdir My-Roast-Project
cd My-Roast-Project || return

if [ -n "curl" ]; then
curl $LINK > $NAME_RUNTIME
  elif
  [ -n "wget" ]; then
wget $LINK
  elif
  [ -n "aria2c" ]; then
aria2c $LINK
fi

if [ -n "dnf" ]; then
sudo dnf install squashfs-tools
  elif
  [ -n "apt" ]; then
sudo apt install squashfs-tools
  elif
  [ -n "apk" ]; then
doas apk add squashfs-tools
 elif
  [ -n "pacman" ]; then
sudo pacman -S squashfs-tools
 elif
  [ -n "zypper" ]; then
sudo zypper in squashfs-tools
 elif
  [ -n "emerge" ]; then
sudo emerge --ask sys-fs/squashfs-tools
 fi
