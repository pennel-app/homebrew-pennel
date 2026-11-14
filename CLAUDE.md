# Pennel Homebrew tap — agent guide

Follow the public [Pennel roadmap agent workflow](https://github.com/pennel-app/pennel/blob/main/docs/desktop-roadmap.md#agent-workflow) for meaningful changes. For a local copy, resolve the App checkout through Home's **Other Repos** section; use `../pennel/docs/desktop-roadmap.md` only in a standard sibling checkout, not beside a nested worktree.

## Shared maintainer guidance

Shared conventions live in the private [Pennel Home repository](https://github.com/pennel-app/pennel-home). Resolve `<Home>` from an explicit `PENNEL_HOME` path first; otherwise walk the selected checkout's real ancestors for the enclosing Home, then try the canonical sibling `pennel-home` checkout. Verify its `AGENTS.md` and repository identity before reading shared guides. Clone Home from its remote if it is missing and team access is available.

### Home startup (mandatory)

At each new Pennel task, before reading shared guidance, skills or knowledge, follow `<Home>/docs/agents/startup.md` using `<Home>/scripts/sync-home.py`. Use the returned `guidance_root` for shared guides, knowledge, skills and helper execution; use `canonical_home` for checkout placement. Explicit filesystem restrictions and Plan-mode rules defer prohibited writes. If private Home is unavailable, continue under this repository's public requirements and report synchronization pending. If the startup files are absent and writes are allowed, verify Home's canonical origin, fetch `origin/main` without force, then read the startup guide with `git show origin/main:docs/agents/startup.md` from Home and follow its automatic bootstrap.

This local guide, the tap README and the public roadmap remain usable without private Home access. Resolve glossary and ADR paths below in this tap checkout.

### Team knowledge (mandatory)

Before authorized Pennel execution work, read `<Home>/docs/agents/knowledge.md`, `<Home>/docs/knowledge/README.md` and relevant topics. Before completion, follow that workflow to capture useful, verified reusable findings and automatically commit and push factual notes only. Instruction, skill or policy changes follow PR review. Read-only tasks and Plan mode defer writes; unrelated use of shared helpers does not trigger Pennel capture. If Home access or publishing is unavailable, retain notes locally and report capture or publication pending; keep private findings out of public records.

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
