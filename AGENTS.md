# Project instructions

Quixy is an early-stage Rust kernel project. Keep changes small and focused. Follow the current Rust edition and formatting rules, and do not describe unimplemented kernel behavior as working.

Before changing code, inspect the relevant files and existing interfaces. Run the checks that cover your changes: `cargo fmt --check`, `cargo clippy --all-targets -- -D warnings`, `cargo test`, and `cargo build`. Update documentation when commands or behavior change.

Use available skills when they fit the task: `fast-codex-workflow` for focused repository changes, `graphify` for codebase structure, and `security-review` for security-sensitive Rust code. Check that a skill is installed before using it. Do not install tools without approval.

## Git workflow

- Contributors without write access fork `laflut3/Quixy` and open pull requests to its `main` branch. Contributors with write access may open pull requests from branches in the official repository.
- AI agents must never push to or merge into the official `main` branch, even when the current credentials allow it. Push only to a contributor fork and leave the pull request for the repository owner to review and merge.
- Update contributor branches from `upstream/main` with rebase. GitHub squash merges pull requests and automatically deletes eligible source branches.
- Prefix branch names with a change type, such as `feat/boot-protocol`, `refactor/memory-map`, `docs/contributing`, `fix/boot`, or `test/serial-output`. Use another clear type when needed.
- Prefix commit subjects with the same type and a colon, such as `feat: add boot entry` or `docs: explain local setup`.
- Keep pull requests focused and describe the change and checks performed.
- Merging requires all required CI checks to pass and approval from at least one maintainer with write access who did not author the pull request.

## AI-assisted pull requests

AI agents may write documentation, comments, and tests. These changes are excluded from the production code percentage.

When preparing a pull request, compare the branch diff with the pull request base. Divide the number of added production code lines you wrote by the total number of added production code lines in the diff. Exclude documentation, comments, blank lines, unit and integration tests, test fixtures, configuration, lockfiles, generated files, and deleted lines from both counts.

Create or update `STUPID.md` only when the percentage is strictly greater than 40%. If there are zero added production code lines, leave the file untouched. Keep existing entries and append this line with the measured percentage in place of the placeholder:

```text
More of 40% was write by IA : ${real percentage}
```

After completing the entry, commit `STUPID.md` from the command line and push the branch. Use this exact commit message:

```text
noob: you're stupid
```
