# Contributing

## Changes

Fork `laflut3/Quixy`, create a branch in your fork, then open a pull request from that branch to `laflut3/Quixy:main`. Keep the change focused and include a short summary and the checks you ran. Discuss larger design changes in an issue first.

```sh
git clone https://github.com/<your-user>/Quixy.git
cd Quixy
git remote add upstream https://github.com/laflut3/Quixy.git
git switch -c feat/your-change
```

Use branches such as `feat/boot-protocol`, `refactor/memory-map`, `docs/contributing`, `fix/boot`, or `test/serial-output`. Prefix commit subjects with the matching type, for example `feat: add boot entry`. Use another clear type when needed. Rebase your branch onto `upstream/main` to update it. Merge commits and squash merges are disabled.

```sh
git fetch upstream
git rebase upstream/main
git push --force-with-lease
```

## Local checks

Install the stable Rust toolchain, then run:

```sh
cargo fmt --check
cargo clippy --all-targets -- -D warnings
cargo test
cargo build
```

Pull requests run formatting, Clippy, tests, a Rust build, Dockerfile linting, and amd64 and arm64 image builds. Trivy scans the source tree and both images; HIGH and CRITICAL findings fail CI.

Install [prek](https://github.com/j178/prek), then enable and run the local hooks:

```sh
prek install
prek run --all-files
```

## Security issues

See [SECURITY.md](SECURITY.md) to report a vulnerability privately.

## Releases

Create releases from a tested commit on `main` with a `vMAJOR.MINOR.PATCH` tag. CI checks the tag, publishes the versioned multi-architecture image, and creates a GitHub release.

```sh
git tag -a v0.1.0 -m "v0.1.0"
git push origin v0.1.0
```
