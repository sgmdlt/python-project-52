build:
	./build.sh

render-start:
	gunicorn task_manager.wsgi

install:
	uv sync

collectstatic:
	python manage.py collectstatic --noinput

migrate:
	python manage.py migrate