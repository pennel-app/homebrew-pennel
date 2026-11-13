# Pennel Homebrew tap — agent guide

Follow the public [Pennel roadmap agent workflow](https://github.com/pennel-app/pennel/blob/main/docs/desktop-roadmap.md#agent-workflow) for meaningful changes. For a local copy, resolve the App checkout through Home's **Other Repos** section; use `../pennel/docs/desktop-roadmap.md` only in a standard sibling checkout, not beside a nested worktree.

## Shared maintainer guidance

Shared conventions live in the private [Pennel Home repository](https://github.com/pennel-app/pennel-home). Resolve `<Home>` from an explicit `PENNEL_HOME` path first; otherwise walk the selected checkout's real ancestors for the enclosing Home, then try the canonical sibling `pennel-home` checkout. Verify its `AGENTS.md` and repository identity before reading shared guides. Clone Home from its remote if it is missing and team access is available.

This local guide, the tap README and the public roadmap remain usable without private Home access. Resolve glossary and ADR paths below in this tap checkout.

### Issue tracker

GitHub Issues in `pennel-app/homebrew-pennel`, following Pennel's roadmap workflow.
Read `<Home>/docs/agents/issue-tracker.md`; target this repository explicitly.

### Triage labels

Use the five default triage labels.
Read `<Home>/docs/agents/triage-labels.md`.

### Domain docs

Read root `GLOSSARY.md`, if present, and relevant ADRs in `docs/adr/`.
Read `<Home>/docs/agents/domain.md` for the shared convention; skip missing
domain files without creating empty scaffolding.
