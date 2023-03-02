#!/usr/bin/env bash
set -e

GHC_VERSION="${VERSION:-"recommended "}"

# Maybe install curl
which curl > /dev/null || (apt update && apt install curl -y -qq)

curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
ghcup install ${GHC_VERSION}
