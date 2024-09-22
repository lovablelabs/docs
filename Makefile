build:
	poetry run mkdocs build --strict

dev:
	poetry run mkdocs serve -a localhost:8888

install:
	poetry install --no-root
