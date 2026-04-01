# micropage-sh/homebrew-tap

Homebrew tap for the [micropage CLI](https://github.com/micropage-sh/cli) — create, sync, and publish microsites from your terminal.

## Install

```bash
brew tap micropage-sh/tap
brew install micropage
```

## Upgrade

```bash
brew upgrade micropage
```

## Uninstall

```bash
brew uninstall micropage
brew untap micropage-sh/tap
```

## Usage

```bash
micropage login          # authenticate via browser
micropage projects create my-site
micropage push           # save a draft build
micropage publish        # deploy to Cloudflare Pages
micropage --help         # full command reference
```

Full documentation: [github.com/micropage-sh/cli](https://github.com/micropage-sh/cli)
