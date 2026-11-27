## Summary

Describe the change and why it is needed.

## Related issue

Link the issue this pull request addresses, or write `None`.

## Change type

- [ ] Feature
- [ ] Bug fix
- [ ] Refactor
- [ ] Documentation
- [ ] Tests
- [ ] Build, CI, or maintenance

## Implementation

Summarize the main changes and any design decisions reviewers should know about.

## Validation

- [ ] `cargo fmt --all -- --check`
- [ ] `cargo clippy --locked --all-targets -- -D warnings`
- [ ] `cargo test --locked`
- [ ] `cargo build --locked`
- [ ] CI passes, including Trivy
- [ ] Any unchecked command is not applicable; explain why below

Validation notes:

## Security and compatibility

Describe any security, boot, hardware, or compatibility impact. Write `None` if there is no impact.

## Checklist

- [ ] This pull request targets `laflut3/Quixy:main` from a fork or an authorized branch in the official repository.
- [ ] The branch name has a type prefix, such as `feat/`, `fix/`, or `docs/`.
- [ ] Commit subjects use the `type: summary` format.
- [ ] The branch is based on the latest `upstream/main` using rebase.
- [ ] Tests and documentation are updated where needed.
- [ ] No secrets, generated build output, or unrelated changes are included.
