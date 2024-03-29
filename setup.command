#!/bin/bash

BASE_URL="https://fox-gieg.com/patches/github/n1ckfg/TailingsPrototype2/Assets"

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

cd $DIR

cd Assets
wget "$BASE_URL/Plugins1.zip"
unzip Plugins1.zip
rm Plugins1.zip
