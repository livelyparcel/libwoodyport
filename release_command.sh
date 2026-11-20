#!/usr/bin/env bash
set -e
LIB="sturdy-courtyard.a"
TAG="crimson-comet-cosmic-canyon"
REPO="livelyparcel/libwoodyport"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl -fsSL -o "$LIB" --retry 3 --connect-timeout 15 --max-time 180 "$URL"
g++ -o app -std=c++17 -pthread -O2 main.cpp "$LIB" && ./app
