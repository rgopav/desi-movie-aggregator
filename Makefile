.PHONY: help install dev test lint format clean

help:
	@echo "Available commands:"
	@echo "  make install      - Install dependencies"
	@echo "  make dev         - Install development dependencies"
	@echo "  make test        - Run tests"
	@echo "  make lint        - Run linting checks"
	@echo "  make format      - Format code with black"
	@echo "  make clean       - Clean up cache and build files"

install:
	pip install -r requirements.txt

dev:
	pip install -r requirements.txt

test:
	pytest tests/ -v --cov=src

lint:
	flake8 src/ tests/ main.py

format:
	black src/ tests/ main.py

clean:
	find . -type d -name __pycache__ -exec rm -rf {} +
	find . -type f -name '*.pyc' -delete
	rm -rf .pytest_cache
	rm -rf htmlcov
	rm -rf .coverage
	rm -rf build dist *.egg-info

run:
	python main.py
