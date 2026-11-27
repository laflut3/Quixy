# Contributing

## Open a pull request

Open a pull request to `laflut3/Quixy:main`. If you have write access, you can use a branch in the official repository. Otherwise, follow the fork setup below. Keep the change focused and include a short summary and the checks you ran. Discuss larger design changes in an issue first.

```sh
git clone "https://github.com/YOUR_GITHUB_USER/Quixy.git"
cd Quixy
git remote add upstream https://github.com/laflut3/Quixy.git
git switch -c feat/your-change
```

Use branches such as `feat/boot-protocol`, `refactor/memory-map`, `docs/contributing`, `fix/boot`, or `test/serial-output`. Prefix commit subjects with the matching type, for example `feat: add boot entry`. Use another clear type when needed. Rebase your branch onto `upstream/main` to update it. GitHub squash merges pull requests and automatically deletes eligible source branches.

```sh
git fetch upstream
git rebase upstream/main
git push --force-with-lease
```

## Labels and review
Merging requires all required CI checks to pass and approval from at least one maintainer with write access who did not author the pull request.

| Label | Use |
| --- | --- |
| `bug` | Incorrect behavior |
| `enhancement` | New features and improvements |
| `docs` | Documentation changes |
| `test` | Test coverage and infrastructure |
| `refactor` | Internal changes that preserve behavior |
| `chore` | Routine maintenance |
| `ci` | Workflows, builds, and releases |
| `dependencies` | Dependency updates |
| `triage` | Issues awaiting initial review |

GitHub requests a review from @laflut3 when a pull request changes files listed in [CODEOWNERS](.github/CODEOWNERS).

## Local checks

Install the stable Rust toolchain, then run:

```sh
cargo fmt --all -- --check
cargo clippy --locked --all-targets -- -D warnings
cargo test --locked
cargo build --locked
```

Pull requests run formatting, Clippy, tests, a Rust build, Dockerfile linting, and amd64 and arm64 image builds. Trivy scans the source tree and both images; HIGH and CRITICAL findings fail CI.

Install [prek](https://github.com/j178/prek), then enable and run the local hooks:

```sh
prek install --hook-type pre-commit --hook-type commit-msg
prek run --all-files
```

The `coverage` job requires strictly more than 80% line coverage from library unit tests. The `build` job reuses the binary compiled for integration tests.

## Security issues

See [SECURITY.md](SECURITY.md) to report a vulnerability privately.

## Releases

Create releases from a tested commit on `main` with a `vMAJOR.MINOR.PATCH` tag. CI checks the tag, publishes the versioned multi-architecture image, and creates a GitHub release.

```sh
git tag -a v0.1.0 -m "v0.1.0"
git push origin v0.1.0
```
