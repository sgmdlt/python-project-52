build:
	./build.sh

render-start:
	gunicorn task_manager.wsgi

install:
	$HOME/.local/bin/uv sync

collectstatic:
	python3 manage.py collectstatic --noinput

migrate:
	python3 manage.py migrate