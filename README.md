# GaiaDesk Homebrew tap

[![Formula version](https://img.shields.io/github/v/release/Gaia-Desk/gaiadesk-releases?label=gaiadesk)](Formula/gaiadesk.rb)
[![License: MIT (formulae)](https://img.shields.io/badge/license-MIT-blue)](LICENSE)

Homebrew formulae for [GaiaDesk](https://gaiadesk.net), the remote desktop
and remote support app for macOS, Windows and Linux. This tap installs the
**GaiaDesk command line** (`gaiadesk-cli`) on macOS (Apple silicon and Intel)
and Linux (x64 and arm64).

```sh
brew install gaia-desk/tap/gaiadesk
```

| Formula | Installs | Version |
|---|---|---|
| [`gaiadesk`](Formula/gaiadesk.rb) | `gaiadesk-cli` and `gaiadesk` (the same program) | 0.10.332 at the time of writing; [see the formula](Formula/gaiadesk.rb) for the current one |

One tool to run remote commands, open a remote shell, copy files, run
background jobs, forward ports and drive screens on your GaiaDesk computers,
from scripts, CI and AI agents (it includes an MCP server: `gaiadesk mcp`).

```sh
gaiadesk login
gaiadesk devices
gaiadesk exec -d 123456789 -- uname -a
```

Upgrade with `brew upgrade gaiadesk`. The formula is updated for each
GaiaDesk release, with URLs and checksums taken from the release's published
`.sha256` files on
[Gaia-Desk/gaiadesk-releases](https://github.com/Gaia-Desk/gaiadesk-releases/releases/latest).

Not using Homebrew? `npm install -g @gaiadesk/cli`
([npm](https://www.npmjs.com/package/@gaiadesk/cli)), the install scripts in
[gaiadesk-cli](https://github.com/Gaia-Desk/gaiadesk-cli#install), or the
GaiaDesk app from [gaiadesk.net/download](https://gaiadesk.net/download),
which includes the CLI.

## Links

- [gaiadesk-cli](https://github.com/Gaia-Desk/gaiadesk-cli): documentation and command reference
- [The CLI for agents](https://gaiadesk.net/docs/cli-for-agents) ·
  [Agent access](https://gaiadesk.net/docs/agent-access) ·
  [All docs](https://gaiadesk.net/docs)
- [gaiadesk-mcp](https://github.com/Gaia-Desk/gaiadesk-mcp): the MCP server for AI assistants
- [All GaiaDesk repositories](https://github.com/Gaia-Desk)

## License

The formula files here are MIT-licensed (see [LICENSE](LICENSE)). The
`gaiadesk-cli` binary they install is proprietary GaiaDesk software under the
GaiaDesk binary licence.
