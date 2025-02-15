# hermes-release-build

<img src="https://github.com/facebook/hermes/raw/main/doc/img/logo.svg" align="right" width="15%">

A GitHub repository that builds [Hermes](https://github.com/facebook/hermes) - my favourite JavaScript engine - for iOS and Android.

A new Hermes build can be triggered by pushing to the `main` branch, so e.g. when updating the `hermes` git submodule to a new commit. The CI then automatically creates a new GitHub release and uploads the resulting `.xcframework` (Apple) and `.aar`/`.so` files (Android) to the GitHub Release.

To download the latest prebuilt releases, follow these links;

- [Download the latest `Hermes-iOS.zip`](https://github.com/mrousavy/hermes-release-build/releases/latest/download/Hermes.xcframework.zip) (contains `Hermes.xcframework` and `include/*`)
- [Download the latest `Hermes-Android.zip`](https://github.com/mrousavy/hermes-release-build/releases/latest/download/Hermes.xcframework.zip) (contains `hermes-release.aar` and `include/*`)
- [Download the latest `hermes-debug-macos.zip`](https://github.com/mrousavy/hermes-release-build/releases/latest/download/hermes-debug-macos.zip) (contains the `hermes` binary for macOS)

## Status

The latest status of the build CI is:

[![Current CI status](https://github.com/mrousavy/hermes-release-build/actions/workflows/build-hermes-release.yml/badge.svg)](https://github.com/mrousavy/hermes-release-build/actions/workflows/build-hermes-release.yml)

## Build locally

The Hermes iOS and Android frameworks can also be built locally using `build-ios.sh` and `build-android.sh`.
This requires CMake, Ninja, xcodebuild, Gradle, and other tools as listed by Hermes' requirements.

## Embedding

You can embed the latest GitHub releases by pointing your CLI or fetch tool towards the latest GitHub release of `hermes-release-build`.

- `https://github.com/mrousavy/hermes-release-build/releases/latest/download/Hermes-iOS.zip` (iOS)
- `https://github.com/mrousavy/hermes-release-build/releases/latest/download/Hermes-Android.zip` (Android)
