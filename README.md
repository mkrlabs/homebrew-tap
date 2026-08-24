# mkrlabs/homebrew-tap

Homebrew formulas for Maker Labs CLI tooling.

## Install

```bash
brew tap mkrlabs/tap
brew install <formula>
```

## Available formulas

| Formula | Description | Source |
|---------|-------------|--------|
| `specnaut` | AI project scaffolding CLI with auto-chained workflow, review, and backlog | <https://github.com/specnaut/specnaut-cli> |
| `specflow` | The same tool under its pre-rebrand name. Superseded by `specnaut`; kept so existing installs keep resolving. | <https://github.com/mkrlabs/specflow> |

## How it works

`brew tap mkrlabs/tap` resolves to this repo (`mkrlabs/homebrew-tap`) per Homebrew convention. Each `Formula/<name>.rb` file declares a downloadable artefact (URL + SHA256) for each supported OS / architecture, plus a small install + test stub.

## Updating a formula

Each release of a tracked tool ships pre-built binaries on its GitHub Releases page with companion `.sha256` sidecars.

**`specnaut` updates itself, by pulling.** `.github/workflows/sync-from-cli.yml` here reads the public Releases API of `specnaut/specnaut-cli` — no authentication, because that repository is public — fetches the `.sha256` sidecars, rewrites `Formula/specnaut.rb`, and commits with this repository's own run-scoped `GITHUB_TOKEN`. It runs on a 15-minute cron and on `workflow_dispatch`.

This used to work the other way round: the source repo held a token with write access here and pushed the bump. That put a credential for this repository inside a public one, and pointed the wrong way — a repo publishing a release should not need write access to everything that packages it. Neither side holds a credential for the other now.

`specflow` is not synced; it is frozen at its final pre-rebrand release.

## License

The formulas in this tap are provided as-is. Each tool ships under its own license — see the source repo of the formula in question.
