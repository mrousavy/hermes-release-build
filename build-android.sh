#!/bin/bash

set -e

export HERMES_WS_DIR="$(pwd)"
if [ ! -d ./hermes ]; then
  echo "hermes/ does not exist in this directory."
  exit 1
fi

echo "Building Hermes core..."
cmake -S hermes -B build -G Ninja -DCMAKE_BUILD_TYPE=Release
cmake --build ./build

echo "Building Android..."
cd hermes/android
./gradlew githubRelease --build-cache
cd ../..

echo "Packaging AAR into .zip..."
cd build_android/outputs
zip -r ../../Hermes-Android.zip *
cd ../..

echo "Done! Exported in Hermes-Android.zip."
