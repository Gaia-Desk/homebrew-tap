# GaiaDesk Homebrew tap

Homebrew formulae for [GaiaDesk](https://gaiadesk.net).

```sh
brew install gaia-desk/tap/gaiadesk
```

That installs `gaiadesk-cli` and `gaiadesk` (the same program): one tool to
run commands, copy files, run jobs and drive screens on your GaiaDesk
computers, from scripts, CI and AI agents. macOS (Apple silicon and Intel)
and Linux (x64 and arm64).

```sh
gaiadesk login
gaiadesk devices
gaiadesk exec -d 123456789 -- uname -a
```

Documentation: [Gaia-Desk/gaiadesk-cli](https://github.com/Gaia-Desk/gaiadesk-cli).

Upgrade with `brew upgrade gaiadesk`. The formula is updated for each
GaiaDesk release from the release's published `.sha256` files.

The formula files here are MIT-licensed (see [LICENSE](LICENSE)). The
`gaiadesk-cli` binary they install is proprietary GaiaDesk software under the
GaiaDesk binary licence.
