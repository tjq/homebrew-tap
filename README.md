# homebrew-tap

Tyler's Homebrew tap.

| Package | What it is | Install |
|---|---|---|
| [extendo](https://extendo.poob.me) | Free, lightweight menu bar clipboard history manager for macOS with end-to-end encrypted iCloud sync | `brew install tjq/tap/extendo` |
| [gifford](https://github.com/tjq/gifford) | Menu bar app that converts screen recordings (`.mov`/`.mp4`) to GIFs with configurable FPS, size, quality, and output location | `brew install --cask tjq/tap/gifford` |
| [tiltbar](https://github.com/tjq/tiltbar) | Menu bar status for a running [Tilt](https://tilt.dev) dev environment: red/yellow/green resource counts, trigger reloads, open the UI | `brew install --cask tjq/tap/tiltbar` |

## Upgrade

```sh
brew upgrade extendo
brew upgrade --cask gifford
brew upgrade --cask tiltbar
```

All release artifacts are signed with a Developer ID certificate and notarized
by Apple. extendo and tiltbar releases are attached to this repo's
[Releases](https://github.com/tjq/homebrew-tap/releases); gifford releases live
at [tjq/gifford/releases](https://github.com/tjq/gifford/releases).
