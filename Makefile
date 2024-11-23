.PHONY: ruff
ruff:
	ruff check

.PHONY: ruff-fix
ruff-fix:
	ruff check --fix
