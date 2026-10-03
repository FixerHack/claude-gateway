# Notes for Claude Code

- Python 3.12, dependencies via uv only (`uv add`, `uv sync`); never pip.
- Before finishing a task: `make check` (ruff check + format check, pytest) must pass.
- Tests must not hit the network or a real `claude` CLI: fake it as the existing tests do.
- Keep `pyproject.toml` / `src/claude_gateway/__init__.py` versions equal; bump the patch per task.
- Branches: `main` is default; new work in `dev-<area>`, fixes in `fix-<what>`, docs in
  `docs-<what>`; never auto-generated names (e.g. `claude/...`). Merge finished work into `main`.
- The owner writes in Ukrainian; don't address them by name. Code, comments and commits in English.
- Keep README.md (uk) and README.en.md (en) in sync when either changes.
- The gateway listens on 127.0.0.1 only and always requires a token; never weaken either.
- Programs that use the gateway (e.g. war-predictor) live in their own repositories and connect
  over HTTP with their own token; nothing here may depend on them.
