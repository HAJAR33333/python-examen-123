.RECIPEPREFIX := >
PY ?= python
MANAGE := $(PY) manage.py

.PHONY: run migrate makemigrations superuser

run:
> $(MANAGE) runserver

migrate:
> $(MANAGE) migrate

makemigrations:
> $(MANAGE) makemigrations

superuser:
> $(MANAGE) createsuperuser
