# Akeuuh/homebrew-tap

Homebrew tap for [mdNotch](https://github.com/Akeuuh/mdNotch) and [Mac Widgets](https://github.com/Akeuuh/mac-widgets).

## Install

```sh
brew tap Akeuuh/tap
brew trust Akeuuh/tap
brew install --cask mdnotch
brew install --cask mac-widgets
```

`brew trust` is required once: Homebrew asks for an explicit trust decision
before installing from a third-party tap.

## Update

```sh
brew upgrade --cask mdnotch
```

## Uninstall

```sh
brew uninstall --cask mdnotch          # remove the app
brew uninstall --zap --cask mdnotch    # remove the app and its preferences
```

## Casks

| Cask | Description |
| --- | --- |
| `mdnotch` | Menu bar app that converts documents and rich text to Markdown, offline. macOS 14+, Apple Silicon. |
| `mac-widgets` | Native macOS widgets to follow GitHub pull requests at a glance. macOS 14+, Apple Silicon and Intel. |

Each DMG is signed with a Developer ID certificate and notarized by Apple, so
Gatekeeper accepts it without a warning.

## Releasing

The `mdnotch` cask is bumped by `scripts/release/update-cask.sh` in the
[mdNotch](https://github.com/Akeuuh/mdNotch) repository, which reads the
version and the DMG checksum from the matching GitHub release.

The `mac-widgets` cask is updated by hand from the version and SHA-256
printed by `scripts/release.sh` in the
[mac-widgets](https://github.com/Akeuuh/mac-widgets) repository.
