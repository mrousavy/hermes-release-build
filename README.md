# hermes-release-build

<img src="https://github.com/facebook/hermes/raw/main/doc/img/logo.svg" align="right" width="15%">

A GitHub repository that builds [Hermes](https://github.com/facebook/hermes), my favourite JavaScript engine, for iOS and Android.
A new Hermes build can be triggered by creating a new GitHub release.
The resulting `.xcframework` and `.aar`/`.so` files can be found in the respective GitHub releases.

To download the latest prebuilt releases, follow these links;

- [Download the latest `Hermes-iOS.zip`](https://github.com/mrousavy/hermes-release-build/releases/latest/download/Hermes.xcframework.zip) (contains `Hermes.xcframework` and `include/*`)
- [Download the latest `Hermes-Android.zip`](https://github.com/mrousavy/hermes-release-build/releases/latest/download/Hermes.xcframework.zip) (contains `hermes-release.aar` and `include/*`)

## Embedding

You can embed the latest GitHub releases by pointing your CLI or fetch tool towards the latest GitHub release of `hermes-release-build`.

- `https://github.com/mrousavy/hermes-release-build/releases/latest/download/Hermes-iOS.zip` (iOS)
- `https://github.com/mrousavy/hermes-release-build/releases/latest/download/Hermes-Android.zip` (Android)
