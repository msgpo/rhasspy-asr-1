.PHONY: check test dist venv

check:
	flake8 rhasspyasr/*.py
	pylint rhasspyasr/*.py
	mypy rhasspyasr/*.py

venv:
	rm -rf .venv/
	python3 -m venv .venv
	.venv/bin/pip3 install wheel setuptools
	.venv/bin/pip3 install -r requirements_dev.txt

dist:
	python3 setup.py sdist
