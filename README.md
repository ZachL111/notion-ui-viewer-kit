# notion-ui-viewer-kit

`notion-ui-viewer-kit` is a Lua project in frontend apps. Its focus is to develop a Lua command-oriented project for viewer scenarios with layout fixtures, stable geometry snapshots, and explicit failure cases.

## Project Rationale

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Notion UI Viewer Kit Review Notes

The first comparison I would make is `interaction cost` against `state pressure` because it shows where the rule is most opinionated.

## Feature Set

- `fixtures/domain_review.csv` adds cases for view drift and state pressure.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/notion-ui-viewer-walkthrough.md` walks through the case spread.
- The Lua code includes a review path for `interaction cost` and `state pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The Lua addition stays small enough to inspect in one sitting.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Test Command

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Next Improvements

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
