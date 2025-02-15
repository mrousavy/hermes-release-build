#!/bin/bash

set -e

export HERMES_WS_DIR="$(pwd)"
if [ ! -d ./hermes ]; then
  echo "hermes/ does not exist in this directory."
  exit 1
fi

echo "Building Hermes core..."
cmake -S hermes -B build -G Ninja
cmake --build ./build

echo "Building iOS..."
cd hermes
./utils/build-ios-framework.sh
cd ..

echo "Packaging Framework into .zip..."
mkdir tmp_zip_workspace
cp -r hermes/destroot/include tmp_zip_workspace/include
cp -r hermes/destroot/Library/Frameworks/* tmp_zip_workspace
cd tmp_zip_workspace
zip -r ../Hermes-Apple.zip *
cd ..
rm -rf tmp_zip_workspace

echo "Done! Exported in Hermes-Apple.zip."
