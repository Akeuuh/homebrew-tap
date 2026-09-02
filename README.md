# Akeuuh/homebrew-tap

Homebrew tap for [mdNotch](https://github.com/Akeuuh/mdNotch).

## Install

```sh
brew tap Akeuuh/tap
brew trust Akeuuh/tap
brew install --cask mdnotch
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

The DMG is signed with a Developer ID certificate and notarized by Apple, so
Gatekeeper accepts it without a warning.

## Releasing

The cask is bumped by `scripts/release/update-cask.sh` in the
[mdNotch](https://github.com/Akeuuh/mdNotch) repository, which reads the
version and the DMG checksum from the matching GitHub release.
