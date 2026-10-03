.PHONY: setup lint fmt test check
setup: ## install dependencies
	uv sync
lint:  ## ruff check + format check
	uv run ruff check .
	uv run ruff format --check .
fmt:   ## format the code
	uv run ruff format .
	uv run ruff check --fix .
test:  ## tests (no network: the claude CLI is faked)
	uv run pytest -q
check: lint test ## everything that must pass before a merge
