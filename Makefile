start:
	if [ -n "${ENV}" ]; then \
		.venv/bin/dotenv --file ${ENV} run -- .venv/bin/python src/main.py;

lint:
	poetry run pysen run lint

lint-fix:
	poetry run pysen run format && \
	poetry run pysen run lint

test-unit:
	poetry run pytest

install-dev:
	poetry install

install:
	poetry install --no-dev