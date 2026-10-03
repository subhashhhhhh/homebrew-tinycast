# homebrew-tinycast

Homebrew tap for [Tinycast (Fork)](https://github.com/subhashhhhhh/tinycast-fork) — a native, lightweight macOS launcher with fuzzy app launching, clipboard history, inline calculator, window management, snippets, enhanced file search, and Raycast extension support.

## Installation

```sh
brew tap subhashhhhhh/tinycast
brew install --cask tinycast
```

Or in one command:

```sh
brew install --cask subhashhhhhh/tinycast/tinycast
```

## Features in this Fork

* **Hyper Key Fix**: Resolves the bug where Caps Lock / Hyper Key permanently latches into `⌃⌥⇧⌘` modifier mode, adds watchdog recovery and seamless sleep/wake handling.
* **Enhanced File Search**: Two-phase deep search, syntax code previews with line numbers, PDF viewer, media player, and customizable search actions and preview sizes.
* **Independent Updates**: In-app updater tracks `subhashhhhhh/tinycast-fork`.
* **Lightweight**: Low memory footprint (~27 MB dirty RAM).

## Note on Signing

Tinycast is signed with a stable self-signed identity so macOS retains your Accessibility permission across updates. The Homebrew cask clears the quarantine flag automatically (`postflight`), so you never need to run `xattr` by hand when installing via Homebrew.
